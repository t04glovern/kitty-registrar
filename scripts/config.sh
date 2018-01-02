# Simply sets up a few useful variables.

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function relative() {
  local full_path="${SCRIPT_DIR}/../${1}"

  if [ -d "${full_path}" ]; then
    # Try to use readlink as a fallback to readpath for cross-platform compat.
    if command -v realpath >/dev/null 2>&1; then
      echo $(realpath "${full_path}")
    elif ! (readlink -n 2>&1 | grep illegal > /dev/null); then
      echo $(readlink -n "${full_path}")
    else
      echo "kitty-registrar's scripts require 'realpath' or 'readlink -f' support." >&2
      echo "Install realpath or GNU readlink via your package manager." >&2
      echo "Aborting." >&2
      exit 1
    fi
  else
    # when the directory doesn't exist, fallback to this.
    echo "${full_path}"
  fi
}

ROOT_DIR=$(relative "") || exit $?
DOC_DIR=$(relative "target/doc") || exit $?

if [ "${1}" = "-p" ]; then
  echo $SCRIPT_DIR
  echo $DOC_DIR
fi