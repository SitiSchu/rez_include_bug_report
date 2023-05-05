pushd $(dirname "${BASH_SOURCE[0]}") > /dev/null || exit

unset REZ_CONFIG_FILE

export REZ_PACKAGES_PATH=$(realpath "./packages")

echo "Resolving 'A B C'"
rez env A B C -- exit
echo "----------------------------------------------"
echo ""
echo "Resolving 'A C'"
rez env A C -- exit
