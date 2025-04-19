# printf 格式化
#     %-20s means left-justified, 
#     %3d means right-justified
printf "Name: %-20s Age: %3d\n", "Alice", 30;

# 多行文本
my $letter = <<"END";
Dear $name,

Thank you for your inquiry.

Sincerely,
The Management
END
print "$letter \n";

# 文本表格
use Text::Table;
my $tb = Text::Table->new("Name", "Age");
$tb->add("Alice", 30);
$tb->add("Bob", 25);
$tb->add("Charlie", 35);
print $tb;