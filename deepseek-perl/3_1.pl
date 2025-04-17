# 读取整个文件
open my $fh, '<', 'input.txt' or die $!;
my @lines = <$fh>;
close $fh;

# 写入文件
open my $out, '>', 'output.txt' or die $!;
print $out "Line 1\nLine 2\n";
close $out;

# 追加模式
open my $log, '>>', 'app.log' or die $!;
print $log scalar localtime . " - Log entry\n";
close $log;


open my $fh , '<', 'input.txt'  or die $!;
    open my $out, '>', 'output.txt' or die $!;
        my @lines = <$fh>;
        print $out @lines; #数组不能于字符串进行连结操作
    close $out;
close $fh;