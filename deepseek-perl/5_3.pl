#!/usr/bin/perl
use strict;
use warnings;
use Text::ASCIITable;

# 从数据库或文件读取数据
my @data = (
    { name => 'Alice', sales => 1500, region => 'North' },
    { name => 'Bob', sales => 2200, region => 'South' },
    { name => 'Charlie', sales => 1800, region => 'East' }
);

# 创建报表
my $t = Text::ASCIITable->new({ headingText => 'Sales Report' });
$t->setCols('Name', 'Region', 'Sales', 'Commission');

for my $row (@data) {
    my $commission = sprintf "%.3f", $row->{sales} * 0.1;
    $t->addRow($row->{name}, $row->{region}, $row->{sales}, $commission);
    print $t;
    print "=============================================\n";
}

# 输出报表
print $t;