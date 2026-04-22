"""Extract barcodes from aligned long-read BAM.

Outputs a 3-column TSV (barcode, reference, metadata) matching the
MPRAsnakeflow assignment format used by assignment_collectBCs and
assignment_filter.
"""

import argparse
import logging
import sys

import pysam

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[logging.StreamHandler(sys.stderr)],
)
logger = logging.getLogger(__name__)


def extract_barcode(seq, pattern, bc_length):
    """Return barcode downstream of pattern, or None."""
    idx = seq.find(pattern)
    if idx == -1:
        return None
    start = idx + len(pattern)
    if start + bc_length > len(seq):
        return None
    return seq[start : start + bc_length]


def main():
    parser = argparse.ArgumentParser(description="Extract barcodes from aligned long-read BAM")
    parser.add_argument("--bam", required=True, help="Aligned BAM from pbmm2")
    parser.add_argument("--pattern", required=True, help="Fixed sequence upstream of barcode")
    parser.add_argument("--bc-length", type=int, required=True, help="Barcode length")
    parser.add_argument("--output", required=True, help="Output TSV")
    args = parser.parse_args()

    stats = {"total": 0, "mapped": 0, "unmapped": 0, "found": 0, "missing": 0}

    out_fh = sys.stdout if args.output == "/dev/stdout" else open(args.output, "w")
    with pysam.AlignmentFile(args.bam, "rb") as bam, out_fh as out:
        for read in bam.fetch():
            stats["total"] += 1

            if read.is_unmapped:
                stats["unmapped"] += 1
                continue

            stats["mapped"] += 1
            seq = read.query_sequence
            if seq is None:
                continue

            bc = extract_barcode(seq, args.pattern, args.bc_length)
            if bc:
                stats["found"] += 1
                cigar = read.cigarstring or "NA"
                mapq = read.mapping_quality
                out.write(f"{bc}\t{read.reference_name}\t{cigar};{mapq}\n")
            else:
                stats["missing"] += 1

    t, m = stats["total"], stats["mapped"]
    logger.info("Total reads: %s", f"{t:,}")
    logger.info("  Mapped: %s (%.1f%%)", f"{m:,}", m / t * 100 if t else 0)
    logger.info("  Pattern found: %s (%.1f%%)", f"{stats['found']:,}", stats["found"] / m * 100 if m else 0)
    logger.info("  Pattern missing: %s", f"{stats['missing']:,}")


if __name__ == "__main__":
    main()
