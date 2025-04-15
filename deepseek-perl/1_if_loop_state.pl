# 条件语句
print "Enter your age: ";
my $age = <STDIN>;
chomp($age);  # 去除换行符

# 验证输入是否为非负整数 --> Good Practice
if ($age =~ /^\d+$/) {
    if ($age > 18) {
        print "Adult\n";
    } elsif ($age > 12) {
        print "Teen\n";
    } else {
        print "Child\n";
    }
} else {
    print "Invalid input. Please enter a non-negative integer.\n";
}

# 循环
for my $i (1..10) {
    print "$i\n";
}

while (my $line = <STDIN>) {
    chomp $line;
    if ($line eq '') { ;# 检查是否为空行
        print "Empty input. Please enter something or type 'quit' to exit.\n";
        next;
    };

    last if $line eq 'quit';  # 退出循环
    print "You entered: $line\n";
}