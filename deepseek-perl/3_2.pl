# 解析CSV
my $csv_line = "John,Doe,30,New York";
my @fields = split /,/, $csv_line;
print "$csv_line \n";
print "@fields \n";

# 复杂分割
my $text = "apple::banana::cherry";
my @fruits = split /::/, $text;

# 合并
# Note: fields is an array, join operates a new scalar
my $new_line = join "|", @fields;
print "$new_line \n";   