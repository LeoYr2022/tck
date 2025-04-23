#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# CSV 转 JSON
use Text::CSV;
use JSON;

my $csv = Text::CSV->new({ binary => 1 });
open my $fh, '<', 'data.csv' or die $!;

my @rows;
my $headers = $csv->getline($fh);
print "Headers: @$headers\n";  # 调试输出
# 读取 CSV 数据
while (my $row = $csv->getline($fh)) {
    print "Row: @$row\n";  # 调试输出
    my %data;
    @data{@$headers} = @$row;
    push @rows, \%data;
    print Dumper(\%data);
}
print "Final Rows: @rows \n";

open my $out, '>', 'data.json' or die $!;
## print $out encode_json(\@rows);
my $json = JSON->new->utf8->pretty->encode(\@rows);
print $out $json;
close $out;