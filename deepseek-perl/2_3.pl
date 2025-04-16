my $date = "2023-04-15";
if ($date =~ /(\d{4})-(\d{2})-(\d{2})/) {
    print "Year: $1, Month: $2, Day: $3\n";
}

# 反向引用
if ("abab" =~ /(..)\1/) {
    print "Found repeated group: $1\n";
}