#!/usr/bin/perl
use strict;
use warnings;
use Search::Indexer;

# 创建或更新索引
my $indexer = Search::Indexer->new(
    dir => 'text_index',
    stopwords => ['the', 'and', 'of']  # 忽略常用词
);

# 索引文档
$indexer->index_file(
    id => 'doc1',
    file => 'document1.txt',
    title => 'Sample Document 1'
);

# 搜索功能
my @results = $indexer->search(query => 'perl text processing');
for my $result (@results) {
    print "Found in $result->{title} (score: $result->{score})\n";
}