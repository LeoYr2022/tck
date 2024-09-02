for {set i 1} {$i <= 5} {incr i} {
    puts $i
}

set cities {NewYork Paris Tokyo London}
foreach city $cities {
    puts $city
}

for {set i 1} {$i <= 5} {incr i} {
    for {set j 1} {$j <= 5} {incr j} {
        puts "$i * $j = [expr $i * $j]"
    }
    puts "------"
}
