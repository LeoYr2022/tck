my $text = "The quick brown fox jumps over the lazy dog";

# 元字符
if ($text =~ /^The/) {       # ^ 开头
    print "Starts with 'The'\n";
}

if ($text =~ /dog$/) {       # $ 结尾
    print "Ends with 'dog'\n";
}

# 量词
if ("aaabbb" =~ /a{2,4}/) {  # 2到4个a
    print "Found 2-4 a's\n";
}