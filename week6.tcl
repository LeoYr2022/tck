proc divide {a b} {
    if {$b == 0} {
        error "division by zero"
    }
    return [expr {$a / $b}]
}

set a [divide 3 1]
puts $a

puts "********************************************************************************"
proc exampleProc {} {
    # 生成一个错误
    error "This is an error message"
}

# 调用过程并捕获错误
if {[catch {exampleProc} result]} {
    puts "Error occurred: $result"
} else {
    puts "Result: $result"
}
