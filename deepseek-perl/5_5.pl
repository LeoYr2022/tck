#!/usr/bin/perl
use strict;
use warnings;

# 简单的文本过滤器框架
while (<>) {
    chomp;
    
    # 应用一系列转换
    $_ = lc($_);            # 转为小写
    s/\bperl\b/Perl/g;      # 标准化术语 \bxxx\b # 词边界
    s/\s+/ /g;              # 标准化空白
    s/[^\w\s]//g;           # 移除标点
    #s/\s//g;                # 移除空格
    
    print "$_\n" if length; # 输出非空行
}

# 使用方法:
# perl filter.pl < input.txt > output.txt
# 或作为管道的一部分: cat input.txt | perl filter.pl | sort | uniq -c