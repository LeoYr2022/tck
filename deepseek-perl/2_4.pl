my $text = "I like cats";
$text =~ s/cats/dogs/;  # 替换
print "$text\n";        # I like dogs

# 全局替换
my $text2 = "foo Foo bar";
$text2 =~ s/foo/bar/gi; # g=global i=ignore sensitive case    
print "$text2\n";       # bar bar bar