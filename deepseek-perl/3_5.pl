# 统计词频
my %word_count;
while (my $line = <STDIN>) {
    chomp $line; # 去除换行符  ★·
    $line = lc $line; # 转换为小写
    last if $line eq "quit";  # 读取到空行时停止
    my @words = split /\s+/, $line; # words is empty for each line 
    ## print "Words: @words\n";
    $word_count{$_}++ for @words;   # hash does not init

    while (my ($key, $value) = each %word_count) {
        print "$key => $value\n";
    }
}
print "Line is: $line\n";   # $line is a local variable 

# 排序输出
#    $b <=> $a  # 降序  
for my $word (sort { $word_count{$b} <=> $word_count{$a} } keys %word_count) {
    printf "%10s: %d\n", $word, $word_count{$word};
}