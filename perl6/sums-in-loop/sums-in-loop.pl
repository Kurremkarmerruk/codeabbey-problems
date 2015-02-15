use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfArrays = $fh.get;

my @accum = [];

for $fh.lines -> $line {
    my $lineSum = 0;
    $line.split(' ').map: { $lineSum += $_ }
    @accum.push($lineSum);
}

say @accum;
