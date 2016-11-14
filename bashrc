# Load aliases
[[ -s "$HOME/.alias" ]] && source "$HOME/.alias"

# Functions
function imggrep() {
  grep -Po "(?<=src\=([\"'])).*?\.(?:png|jpg|gif).*?(?=\1)"  # Get img sources from HTML
}

function lastmod() {
  find . -not -path '*/\.*' -type f -printf '%T@ %TY-%Tm-%Td %TH:%TM:%.2TS %p\n' | sort -nr | head -n 5 | cut -f2- -d" "
}

function zombiehunt() {
  ps alx | awk 'NR==1 || $10~/[zZ]/'
}
