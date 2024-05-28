
puts "Hello, World!"

puts "=================Example1 simple match================" 
#{{{{{{{{{{{{
set string "Hello, World!"
if {[regexp {Hello} $string]} {
    puts "The string contains 'Hello'."
} else {
    puts "The string does not contain 'Hello'."
}
#}}}}}}}}}}}}

puts "=================Example2 match & capture string================" 
## {{{
set string "Hello, World!"
if {[regexp {Hello, (.*)!} $string match greeting]} {
    puts "match is $match"
    puts "The greeting is: $greeting"
} else {
    puts "No greeting found."
}
##}}}

puts "=================Example3 ================" 
## {{{{{{
set string "apple"
switch -regexp -- $string {
    {^a.*} { puts "The string starts with 'a'." }
    {^b.*} { puts "The string starts with 'b'." }
    default { puts "The string does not start with 'a' or 'b'." }
}
## }}}}}}

puts "=================Example4 ================" 
set string "123-456-7890"
if {[regexp {(\d{3})-(\d{3})-(\d{4})} $string match areaCode prefix lineNumber]} {
    puts "Area Code: $areaCode"
    puts "Prefix: $prefix"
    puts "Line Number: $lineNumber"
} else {
    puts "The string is not a valid phone number."
}

