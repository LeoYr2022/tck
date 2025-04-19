# 处理多个文件
my @ARGV = ('input.txt', 'output.txt');
for my $file (@ARGV) {
    print "Processing $file...\n";
    open my $fh, '<', $file or warn "Can't open $file: $!" and next;
    while (my $line = <$fh>) {
        # 处理每一行
        ## print "$line \n";
    }
    close $fh;
}

# 文件查找与处理
use File::Find;
use Cwd 'getcwd';

my $current_dir = getcwd();         
find(sub {
    return unless -f $_ && /\.txt$/i;
    open my $fh, '<', $_ or return;
    # 处理文本文件
    print "Finding file: $_\n";
}, $current_dir); 