# 统计行数、字数、字符数
my ($lines, $words, $chars) = (0, 0, 0);

# 打开文件
open my $fh, '<', 'input.txt' or die "Cannot open input.txt: $!";
while (<$fh>) {
    chomp;  # 去除换行符 equals chomp($_);
    $lines++;
    $chars += length($_);
    $words += scalar(split);
}
close $fh;  
print "Lines: $lines, Words: $words, Chars: $chars\n";

## # N-gram 分析
## my %ngrams;
## my $n = 3;
## while (my $line = <>) {
##     chomp $line;
##     for my $i (0 .. length($line) - $n) {
##         my $ngram = substr($line, $i, $n);
##         $ngrams{$ngram}++;
##     }
## }