# 编写一个TCL过程，接受两个参数并打印它们的乘积
proc multiply_and_print {a b} {
    set c [expr $a*$b]
    puts "$a * $b = $c"
}

puts "Enter a: "
gets stdin a
puts "Enter b: "
gets stdin b
multiply_and_print $a $b
