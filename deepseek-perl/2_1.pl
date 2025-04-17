my $text = "The quick brown fox jumps over the lazy dog";

if ($text =~ /fox/) {
    print "Found 'fox'\n";
}

# 匹配位置
my $pos = index($text, "brown");
print "Position of 'brown': $pos\n";

## my $char = substr($text, $pos,length("brown"));
my $char = substr($text, $pos);
print "Character at position $pos: $char\n";    