proc greet {} {
    puts "Hello, World!"
}
greet

proc add {a b} {
    set sum [expr $a + $b]
    puts "Sum: $sum"
}
add 5 10

proc greet_with_name {{name Guest}} {
    puts "Hello, $name!"
}
greet_with_name

proc multiply {a b} {
    return [expr $a * $b]
}

puts "Enter 2 nums: "
gets stdin a
gets stdin b
set result [multiply $a $b]
puts "Result: $result"

## 4.5.1
proc local_example {} {
    set localVar "I am local"
    puts $localVar
}

## 4.5.2
set globalVar "I am global"

proc global_example {} {
    global globalVar
    puts $globalVar
    set globalVar "I am modified global"
}

global_example
puts $globalVar  ;# 输出 "I am modified global"
