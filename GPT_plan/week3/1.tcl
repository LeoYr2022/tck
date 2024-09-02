set x 15
if {$x > 10} {
    puts "x is greater than 10"
} elseif {$x == 10} {
    puts "x equals 10"
} else {
    puts "x is less than 10"
}

set y 20
if {($x > 5) && ($y < 25)} {
    puts "x is greater than 5 and y is less than 25"
}
