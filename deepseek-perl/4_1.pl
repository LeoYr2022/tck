# 匹配电子邮件
#    [pattern]+: menas one or more of the preceding element 
#    [pattern]{m,}: means at least m of the preceding element
my $email = 'user@example.com';
if ($email =~ /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/) {
    print "Valid email\n";
} else {
    print "Invalid email\n";
}

# 非贪婪匹配
#    (.*?): ?匹配尽可能少的字符
#     $_ 是隐藏变量
#     $1 用于捕获组中的内容
#     没有 g 修饰符时，正则表达式每次都会从字符串的开头开始匹配; 无线循环
my $html = '<p>Paragraph</p><p>Another</p>';
while ($html =~ m{<p>(.*?)</p>}g) {
    print "Found paragraph: $1\n";
}