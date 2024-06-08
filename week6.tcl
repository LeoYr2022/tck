proc divide {a b} {
    if {$b == 0} {
        error "division by zero"
    }
    return [expr {$a / $b}]
}

if {[catch {divide 3 1} result option]} {
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
#    trace {add|remove} {variable|command} name {read|write|unset} command

proc debugExample {a b} {
    puts "a = $a, b = $b"
    set result [expr {$a + $b}]
    puts "result = $result"
    return $result
}
debugExample 4 5

puts "********************************debug info**************************************"
puts "Vars  are: \t \n [info vars]"
puts "Procs are: \t \n [info procs]"

puts "********************************debug trace**************************************"
proc trace_callback {name element op} {
    puts "Variable $name was accedssed for $op"
}
trace add variable myVar write trace_callback
trace add variable myVar read  trace_callback
trace add variable myVar unset trace_callback

set myVar 0
set myVar 10
puts $myVar
unset myVar

trace remove variable myVar write trace_callback
trace remove variable myVar read  trace_callback
trace remove variable myVar unset trace_callback
set myVar 1
puts $myVar
