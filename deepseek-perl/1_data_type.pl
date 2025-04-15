# 标量
my $greeting = "Hello, " . "Jame" . "!";  # 连接
my $len = length($greeting);              # 长度

print "$greeting\n";
print "Length: $len\n";

# 数组
my @colors = ("red", "green", "blue");
my $first = $colors[0];       # 访问元素
push @colors, "yellow";       # 添加元素

print "First color: $first\n";
print "@colors\n";

# 哈希
my %person = (
    name => "Bob",
    age => 25,
    occupation => "developer"
);
my $name = $person{name};     # 访问值
$person{email} = "bob\@example.com"; # 添加键值对

print "Name: $name\n";
print "$person{email}\n";