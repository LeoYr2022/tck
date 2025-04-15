# Open file context
open my $fh, '<', '../hello.tcl', or die "$!"; # $!=错误信息
my @lines = <$fh>;
close $fh;

# handing context
foreach my $line (@lines) {
    chomp $line; #移除换行符
    # ...
    print "$line\n";
}