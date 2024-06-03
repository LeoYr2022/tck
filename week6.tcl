proc divide {a b} {
    if {$b == 0} {
        error "division by zero"
    }
    return [expr {$a / $b}]
}

if {[catch {divide 3 0} result option]} {
    puts "Error occured: $result"
    puts "Options: $option"
} else {

}

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

puts "********************************debug hint**************************************"
# puts
# info
# trace
