if [catch {open ./dataq.tcl w} res] {
    puts "Cannot open dataq.tcl for write. $res"
} else {
    puts $res "xxx"
    close $res
}