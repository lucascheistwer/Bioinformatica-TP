use Bio::Factory::EMBOSS;
use strict;
use warnings;
use Try::Tiny;

my $factory = new Bio::Factory::EMBOSS;
my $emboss = $factory->program('backtranseq');
my $input = shift;

try{
    $emboss->run({-sequence => $input,-outfile => "$input.emboss" });
    use Bio::AlignIO;
    my $align = Bio::AlignIO->new(-file => "$input.emboss", -format => 'emboss');
    print "FINISHED"
}
catch{
    warn "error: $_"
}