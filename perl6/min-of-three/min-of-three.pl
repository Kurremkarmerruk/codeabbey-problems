use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfLists = $fh.get;

my @accum = [];

for $fh.lines -> $line {
    my @lineList = $line.split(' ');
    @accum.push(@lineList.sort()[0]);
}

say @accum;
