use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfLists = $fh.get;

my @accum = [];

for $fh.lines -> $line {
    my ($a, $b, $c) = $line.split(' ');
    @accum.push($a min $b min $c);
}

say @accum;
