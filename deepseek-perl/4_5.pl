# 处理UTF-8文本
use utf8;
binmode STDOUT, ':encoding(UTF-8)';
binmode STDIN, ':encoding(UTF-8)';

open my $fh, '<:encoding(UTF-8)', 'input.txt' or die $!;
while (my $line = <$fh>) {
    # 处理UTF-8文本
    ## chomp;
    ## print "$line \n";
}
close $fh;

# 编码转换
use Encode;
## my $utf8_text = decode('gb2312', $gb_text);
## my $gb_text = encode('gb2312', $utf8_text);
my $gb_text = encode('gb2312', "你好");  # 示例 GB2312 文本
my $utf8_text = decode('gb2312', $gb_text);
print "Decoded to UTF-8: $utf8_text\n";