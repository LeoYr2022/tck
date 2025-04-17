# 修饰符
my $text = "Hello\nWorld";
if ($text =~ /hello/i) {  # i 忽略大小写
    print "Found hello\n";
}

if ($text =~ /hello.world/si) { # s 让.匹配换行符
    print "Found across lines\n";
}

# 预编译正则
my $regex = qr/(\d{3})-(\d{4})/;
if ("123-4567" =~ $regex) {
    print "Matched pattern\n";
}