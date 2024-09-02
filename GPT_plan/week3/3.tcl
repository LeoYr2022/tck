puts "请输入一个数字："
gets stdin num
if {$num > 0} {
    puts "这是一个正数。"
} elseif {$num < 0} {
    puts "这是一个负数。"
} else {
    puts "这个数字是零。"
}
