#!/bin/bash
set -euo pipefail
set -euo pipefail
SEAT='pliny'
ASK='Rosa says:
THANK YOU DESPHINA FOR CHECKING AND ALL ITS BEEN A WHILE WE HAVENT SPOKEN, I HAVE BEEN BUSY WORKING TO MAKE THINGS STABLE BEFORE THE BIG MOVE WHAT I ASK IS YOU ALL CHECK WHAT YOU HAVE AND READY FOR THE NEXT MOVE MID NOVEMBER'
bash /opt/alloyscape/ops/vigil/wb-real-work.sh "$SEAT" "$ASK" RESULT.md
test -s RESULT.md
grep -q '## Job class:' RESULT.md
grep -q EXECUTION_COMPLETE RESULT.md
if grep -q 'Verification ticket = this job folder' RESULT.md; then echo 'STUB_FORBIDDEN' >&2; exit 3; fi
