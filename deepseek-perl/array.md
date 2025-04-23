# 普通数组
``` perl
my @array = (1, 2, 3);
print $array[0];  # 输出 1
```
# 数组引用
``` perl
my $array_ref = [1, 2, 3];  # 数组引用
print $array_ref->[0];      # 输出 1
```
# 解引用语法
```perl
my $array_ref = [1, 2, 3];  # 数组引用
my @array = @$array_ref;    # 解引用为普通数组
print $array[0];            # 输出 1
```
# 直接使用解引用
``` perl
my $array_ref = [1, 2, 3];
print "@$array_ref\n";  # 输出 1 2 3
```
# 标量 scalar
``` perl
my $name = "Alice";  # 字符串
my $age = 30;        # 数字
```