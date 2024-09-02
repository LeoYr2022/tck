# variable
set str1 "Hello, TCL"
set str2 {This is also a string}
puts $str1  ;# 输出：Hello, TCL
puts $str2  ;# 输出：This is also a string

# list
## lindex llength lappend
set myList {apple banana cherry}
puts $myList             ;# 输出：apple banana cherry
puts [lindex $myList 1]  ;# 输出：banana (获取列表中第2个元素，索引从0开始)

set len [llength $myList] 
puts "The length of the list is $len"

lappend myList waterm a1 a3 a5
puts $myList

# Array
## array set
## array get
## array name
set myArray(name) "John"
set myArray(age) 30
puts $myArray(name)  ;# 输出：John
puts $myArray(age)   ;# 输出：30

foreach {key vaule} [array get myArray] {
   puts "$key: $vaule" 
}

foreach {key} [array name myArray] {
   puts "arrayName: $key" 
}


set myString "Learning TCL is fun!"
puts "String length: [string length $myString]"
puts "Uppercase: [string toupper $myString]"
puts "Lowercase: [string tolower $myString]"

