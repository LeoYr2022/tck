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

puts "******************************Do Lab 1*********************************************"
#### "编写一个脚本，读取一个文本文件的内容并统计文件中的行数"
set lines       0
set lines_real  0

set fileId [open "week4.tcl" "r"] 
while {[gets $fileId line] >= 0} { 
    incr lines
    set trimedlinie [string trim $line]
    if {![string length $trimedlinie] == 0} {
        incr lines_real
    }
}
close $fileId
puts "The week4 totolly has $lines lines."
puts "The week4 really has $lines_real lines."

puts "******************************Do Lab 2*********************************************"
#### "编写一个脚本，读取一个文本文件的内容并统计文件中的行数。
set fileId [open "./tmp/lab5_2" "w"] 
while {1} {
    puts "Enter a sentence: "
    gets stdin words
    if {![string compare $words exit]} { ;# string compare =0 means equal
        break
    } else {
        puts $fileId $words
    }
}
close $fileId

puts "******************************Do Lab 3********************************************"
###  "编写一个脚本，检查指定的文件是否存在，如果存在则输出文件大小，否则输出文件不存在的信息。
set fileId [open "./tmp/lab5_2" "r"]

if {[catch {set fileId [open "./tmp/lab5_2" "r"]} errMsg]} {
    puts "Failed to open file: $errMsg"
} else {
    puts "File opened successfully: lab5_2"
    set size [file size "./tmp/lab5_2"]
    puts "lab5_2 size is: $size"
}
close $fileId