# 使用简单的模板系统
my $template = "Hello, [% date %]! Today is [% name %].";
my %vars = (
    name => "Alice",
    date => scalar localtime
);

print "Name, $vars{name}!\n";
print "Date, $vars{date}!\n";
$template =~ s/\[%\s*(\w+)\s*%\]/exists $vars{$1} ? $vars{$1} : "[undefined]"/ge;
print "$template\n";

# 使用 Template Toolkit 模块
my %vars = (
    name => "Alice",
    date => scalar localtime
);
use Template;
my $tt = Template->new;
$tt->process(\*DATA, \%vars) || die $tt->error;
print "\n";

__DATA__
Hello, [% name %]!
Today's date: [% date %]