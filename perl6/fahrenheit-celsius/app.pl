use lib 'lib';
use Roundup;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $data = $fh.get;
my $numOfTemps = $data.split(' ').[0];
my @tempsF = $data.split(' ').[1..$numOfTemps];

my @tempsC = @tempsF.map: { (* - 32) * (5/9) }

say @tempsC
