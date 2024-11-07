set x 10       ;# 定义一个整数变量 x，值为 10
set name "Tcl" ;# 定义一个字符串变量 name，值为 "Tcl"
puts $x
puts ${name}

set firstName "John"
set lastName "Doe"
set fullName "$firstName $lastName"
puts $fullName  ;# 输出 "John Doe"
puts [string length $fullName]
puts [string index $fullName 0] ;#index从0开始

puts "请输入你的名字："
gets stdin name       ;#get stdin是一个命令，类似 set name <用户输入>
puts "你好, $name!"
