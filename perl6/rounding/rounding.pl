use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfLists = $fh.get;

my @accum = [];

#= divide rounding up at half
sub infix:<҂>(Int:D $n, Int:D $d) {
    given $n % $d {
        when $_ >  $d div 2 { ($n / $d).ceiling }
        when $_ == $d div 2 { ($n / $d).ceiling }
        when $_ <  $d div 2 { ($n / $d).floor   }
    }
}

for $fh.lines -> $line {
    my ($a, $b) = $line.split(' ');
    @accum.push(+$a ҂ +$b);
}

say @accum;
