pushd $(dirname "${BASH_SOURCE[0]}") > /dev/null || exit

unset REZ_CONFIG_FILE
export PACKAGE_PREFIX=$(realpath "../packages")

function build_pkg() {
  echo Building Package $1 with Utils v$2
  export REZ_PACKAGE_DEFINITION_PYTHON_PATH=$(realpath "./include_path_v$2")
  pushd $(realpath "./packages/$1") > /dev/null || exit
  rez build -ci --prefix "$PACKAGE_PREFIX" >> /dev/null || exit
  popd > /dev/null || exit
}

build_pkg A 2
build_pkg B 1
build_pkg C 2
