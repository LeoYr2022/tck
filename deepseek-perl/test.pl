my $array_ref = [1, 2, 3];  # 数组引用
my @array = @$array_ref;    # 解引用为普通数组
print "$array[2] \n";       # 输出 1