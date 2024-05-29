puts "***************************Open & Close a file************************************************"
set fileId [open "week4.tcl" "r"] ;# r/w/a(append)
set filePath "week4.tcl"

if {[catch {set fileId [open $filePath r]} errMsg]} {  ;#catch gets the return of open
    puts "Failed to open file: $errMsg"
} else {
    puts "File opened successfully: $filePath"
}

close $fileId

puts "***************************write & read a file************************************************"
## "gets" reads a line
## "read" reads the whole file
set fileId [open "week4.tcl" "r"] ;# r/w/a(append)
while {[gets $fileId line] >= 0} { 
   puts "new line: $line" 
}
close $fileId

set fileId [open "week4.tcl" "r"] ;# r/w/a(append)
set content [read $fileId]
puts "The new file's content are: \n$content"
close $fileId

set fileId [open "./tmp/output.tcl" "w"]
puts $fileId "Hello World!"
close $fileId

puts "***************************************************************************"
if {[file exists "./tmp/output.tcl"]} {
    set size [file size "./tmp/output.tcl"]
    puts "File exists: $size bytes"
} else {
    puts "File does not exist!"
}


if {[file exists "./tmp/test"]} {
    puts "File exists"
    file delete "./tmp/test"
}

if {[file exists "./tmp/test"]} {
} else {
    puts "File does not exist!"
    set fileId [open "./tmp/test" "w"]
    close $fileId
}