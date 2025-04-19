my $str = "   Perl is great   ";

# 去除首尾空白
$str =~ s/^\s+|\s+$//g;
print "Trimmed string: '$str'\n";

## # 或使用模块
## # install:
## #     step1: sudo cpan App::cpanminus
## #     step2: sudo cpanm String::Util
## use String::Util 'trim';
## $str = trim($str);
## print "Trimmed string: '$str'\n";

# 子字符串
my $sub = substr($str, 0, 4);  # "Perl" 
                               # 4 means how many characters
print "Substring: '$sub'\n";

# 大小写转换
my $uc = uc($str);     # 全大写
my $lc = lc($str);     # 全小写
my $tc = ucfirst($str); # 首字母大写
print "Uppercase: '$uc'\n"; 
print "Lowercase: '$lc'\n";
print "Titlecase: '$tc'\n";