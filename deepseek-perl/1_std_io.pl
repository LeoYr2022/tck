# 标准输入输出
print "Enter your name: ";
my $name = <STDIN>;
chomp($name);  # 去除换行符
print "Hello, $name!\n";

# 文件操作
open my $fh, '<', 'input.txt' or die "Cannot open file: $!";
while (my $line = <$fh>) {
    print $line;
}
close $fh;