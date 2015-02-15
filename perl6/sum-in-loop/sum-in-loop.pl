use v6;

my $filename = @*ARGS[0];

my $file = open($filename);
my ($numOfLines, $numsToSum) = $file.lines[0, 1];
$file.close;

my @nums = split(' ', $numsToSum);
my $accum = 0;

loop (my $i = 0; $i < $numOfLines; $i++) {
    $accum += @nums[$i];
}

say $accum;
