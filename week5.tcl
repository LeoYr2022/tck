puts "***************************Open & Close a file************************************************"
set fileId [open "week4.tcl" "r"] ;# r/w/a(append)
set filePath "week4.tcl"

if {[catch {set fileId [open $filePath r]} errMsg]} {  ;#catch gets the return of open
    puts "Failed to open file: $errMsg"
} else {
    puts "File opened successfully: $filePath"
}

close $fileId