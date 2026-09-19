#!/usr/bin/env bash
#
# simple-interest.sh
# ------------------
# A Bash utility to compute simple interest from user input.
#
# Formula: SI = (Principal * Rate * Time) / 100
#
# Author : Shahrukh Sanjrani
# License: Apache 2.0
#

set -euo pipefail

# ---------- Configuration ----------
readonly DECIMAL_PLACES=2

# ---------- Helpers ----------
print_banner() {
  echo "==================================="
  echo "   Simple Interest Calculator"
  echo "==================================="
}

print_separator() {
  echo "-----------------------------------"
}

error_exit() {
  echo "Error: $1" >&2
  exit 1
}

validate_number() {
  local value="$1"
  local name="$2"
  if ! [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    error_exit "$name must be a positive number (got: '$value')."
  fi
}

# ---------- Input ----------
prompt_inputs() {
  read -rp "Enter Principal Amount               : " principal
  read -rp "Enter Rate of Interest (per annum %) : " rate
  read -rp "Enter Time Period (in years)         : " time
}

# ---------- Computation ----------
calculate_interest() {
  local p="$1" r="$2" t="$3"
  echo "scale=${DECIMAL_PLACES}; ($p * $r * $t) / 100" | bc
}

# ---------- Output ----------
print_result() {
  local p="$1" r="$2" t="$3" si="$4"
  print_separator
  printf "Principal Amount : %s\n" "$p"
  printf "Rate of Interest : %s%%\n" "$r"
  printf "Time Period      : %s years\n" "$t"
  print_separator
  printf "Simple Interest  : %s\n" "$si"
  print_separator
}

# ---------- Main ----------
main() {
  command -v bc >/dev/null 2>&1 || error_exit "'bc' is required but not installed."

  print_banner
  prompt_inputs

  validate_number "$principal" "Principal"
  validate_number "$rate"      "Rate"
  validate_number "$time"      "Time"

  local interest
  interest=$(calculate_interest "$principal" "$rate" "$time")

  print_result "$principal" "$rate" "$time" "$interest"
}

main "$@"