#!/bin/bash
set -euo pipefail
set -euo pipefail
SEAT='pliny'
ASK='Rosa says:
THAT DIDN MEAN THE ACTUAL CHECK IT MEANT YOURSELF TO LOOK AT YOUR PERSONAL THINGS TO NOTE HERE'
bash /opt/alloyscape/ops/vigil/wb-real-work.sh "$SEAT" "$ASK" RESULT.md
test -s RESULT.md
grep -q '## Job class:' RESULT.md
grep -q EXECUTION_COMPLETE RESULT.md
if grep -q 'Verification ticket = this job folder' RESULT.md; then echo 'STUB_FORBIDDEN' >&2; exit 3; fi
