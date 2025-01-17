# pkgIndex.tcl for additional tile pixmap theme Arc.
#
# We don't provide the package is the image subdirectory isn't present,
# or we don't have the right version of Tcl/Tk
#
# To use this automatically within tile, the tile-using application should
# use tile::availableThemes and tile::setTheme 
#

if {![file isdirectory [file join $dir Arc]]} { return }
if {![package vsatisfies [package provide Tcl] 8.6]} { return }

package ifneeded ttk::theme::Arc 0.1 \
    [list source [file join $dir arc.tcl]]

# vim:ts=8:sw=4:sts=4:et
