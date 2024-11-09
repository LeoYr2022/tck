#!/opt/conda/bin/tclsh

set a "hello Tcl world !"
set b ""
for {set i 0} {$i < [llength $a]} {incr i 1} {
    lappend b [lindex $a $i]
}

puts $b