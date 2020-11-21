# From ../scripts/package/builddeb:

version=$1
srctree=$2
objtree=$3
kernel_headers_dir=$4
SRCARCH=$5

(cd $srctree; find . -name Makefile\* -o -name Kconfig\* -o -name \*.pl) > "debian/hdrsrcfiles"
(cd $srctree; find arch/$SRCARCH/include include scripts -type f) >> "debian/hdrsrcfiles"
(cd $srctree; find arch/$SRCARCH -name module.lds -o -name Kbuild.platforms -o -name Platform) >> "debian/hdrsrcfiles"
(cd $srctree; find $(find arch/$SRCARCH -name include -o -name scripts -type d) -type f) >> "debian/hdrsrcfiles"
(cd $objtree; find arch/$SRCARCH/include Module.symvers include scripts -type f) >> "debian/hdrobjfiles"
destdir=$kernel_headers_dir/usr/src/linux-headers-$version
mkdir -p "$destdir"
(cd $srctree; tar -c -f - -T -) < "debian/hdrsrcfiles" | (cd $destdir; tar -xf -)
(cd $objtree; tar -c -f - -T -) < "debian/hdrobjfiles" | (cd $destdir; tar -xf -)
(cd $objtree; cp .config $destdir/.config) # copy .config manually to be where it's expected to be
ln -sf "/usr/src/linux-headers-$version" "$kernel_headers_dir/lib/modules/$version/build"
rm -f "debian/hdrsrcfiles" "debian/hdrobjfiles"
