use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfPairs = $fh.get;

my @accum = [];

for $fh.lines -> $line {
    my ($a, $b) = $line.split(' ')[0, 1];
    @accum.push($a < $b ?? $a !! $b);
}

say @accum;
