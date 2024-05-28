# proceed

proc sayHello {} {
    puts "Hello, World!"
}

for {set i 0} {$i < 10} {incr i} {
    sayHello
}

puts "******************************************************************************************"
proc greet {name} {
    puts "Hello, $name"
}

for {set i 0} {$i < 10} {incr i} {
    greet "Alice_${i}"
}

puts "******************************************************************************************"
proc add {a b} {
    return [expr {$a+$b}]
}

set sum [add 3 4]
puts "Sum is: $sum"

puts "******************************************************************************************"
proc greet {name {greeting "Hello"}} {
    puts "$greeting, $name"
}

greet "Bob"
greet "John" "Good Morning"

puts "*************************************Global & Local varable*******************************"
set num 0
proc accumulate {n} {
    global sum ;#combine with using outside procedure
    for {set i 0} { $i < $n} { incr i } {
       set sum [expr {$sum + $i}] 
    }
    puts "Inside procedure, sum = $sum"
}

accumulate 10
puts "Outside procedure, sum = $sum"