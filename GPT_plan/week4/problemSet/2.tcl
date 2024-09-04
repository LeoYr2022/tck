# 定义一个过程，接受一个名称参数，并打印问候语。如果未提供名称，使用默认值“Guest”。 

proc greeting_and_print {{name Guest}} {
    puts "Hello $name"
}

puts "Hello. what is your name? "
gets stdin name
greeting_and_print $name
greeting_and_print