set sum 0
for {set i 1} {$i <= 10} {incr i} {
    set sum [expr $sum + $i]
}
puts "1到10之间的和是：$sum"

set fruits {apple banana cherry}
set index 0
foreach fruit $fruits {
    puts "Index $index: $fruit"
    incr index
}

set num 1
while {1} {
    if {($num > 50) && ($num % 2 == 0)} {
        puts "第一个大于50的偶数是：$num"
        break
    }
    incr num
}
