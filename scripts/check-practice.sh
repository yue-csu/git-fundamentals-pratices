#!/usr/bin/env bash

set -uo pipefail

errors=0

fail() {
  printf 'ERROR: %s\n' "$1"
  errors=$((errors + 1))
}

introduction="practice/introduction.md"
reflection="practice/reflection.md"

if [[ ! -f "$introduction" ]]; then
  fail "$introduction is missing."
fi

if [[ ! -f "$reflection" ]]; then
  fail "$reflection is missing."
fi

if (( errors > 0 )); then
  exit 1
fi

if grep -q 'TODO' "$introduction" "$reflection"; then
  fail "Replace every TODO in the two practice files."
fi

username_line=$(grep -E '^GitHub username: ' "$introduction" || true)
username=${username_line#GitHub username: }
username=${username#@}

if [[ ! "$username" =~ ^[A-Za-z0-9][A-Za-z0-9-]{0,38}$ ]]; then
  fail "Enter a valid GitHub username after 'GitHub username:' in $introduction."
fi

answer_count=$(grep -c '^Answer: ' "$reflection" || true)
if [[ "$answer_count" -ne 4 ]]; then
  fail "$reflection must contain exactly four lines beginning with 'Answer: '."
else
  answer_number=0
  while IFS= read -r line; do
    if [[ "$line" == Answer:\ * ]]; then
      answer_number=$((answer_number + 1))
      answer=${line#Answer: }
      if (( ${#answer} < 20 )); then
        fail "Reflection answer $answer_number must contain at least 20 characters."
      fi
    fi
  done < "$reflection"
fi

if (( errors > 0 )); then
  printf '\n%d check(s) failed. Fix the messages above and run this script again.\n' "$errors"
  exit 1
fi

printf 'All practice-file checks passed.\n'
