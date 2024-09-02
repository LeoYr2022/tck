for {set i 1} {$i <= 100} {incr i} {
    if {$i % 2 != 0} {
        puts $i
    }
}

puts "Enter an integer: "
gets stdin num
set time 1
for {set i 1} {$i <= $num} {incr i} {
    set time [expr $time * $i]
}
puts "Timer is $time"