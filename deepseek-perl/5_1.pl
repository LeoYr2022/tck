#!/usr/bin/perl
use strict;
use warnings;

my %error_counts;
my %ip_counts;

# 打开日志文件
my $log_file = 'log';  # 替换为实际日志文件路径
open my $fh, '<', $log_file or die "Cannot open $log_file: $!";
# 逐行读取日志
while (<$fh>) {
    # 示例日志行: 192.168.1.1 - - [15/Apr/2023:10:30:45] "GET / HTTP/1.1" 200 1234
    if (/^(\d+\.\d+\.\d+\.\d+).*?"\w+ \S+ HTTP\/\d\.\d" (\d{3})/) {
        my ($ip, $status) = ($1, $2);
        print "IP: $ip, Status: $status\n";  # 调试输出
        $ip_counts{$ip}++;
        $error_counts{$status}++ if $status >= 200;
    }
}
close $fh;

use Data::Dumper;
print Dumper(\%ip_counts);  # 注意传递哈希引用
print Dumper(\%error_counts);  # 注意传递哈希引用

# 输出报告
print "=== Error Summary ===\n";
for my $status (sort keys %error_counts) {
    print "Status $status: $error_counts{$status} occurrences\n";
}
print "\n===\n";
for my $status (sort {$error_counts{$b} <=> $error_counts{$a}} keys %error_counts) {
    print "Status $status: $error_counts{$status} occurrences\n";
}

print "\n=== Top IPs ===\n";
for my $ip (sort { $ip_counts{$b} <=> $ip_counts{$a} } keys %ip_counts) {
    print "$ip: $ip_counts{$ip} requests\n";
}