#!/usr/bin/perl
use Bio::SearchIO;
use Bio::DB::GenPept;
use Bio::SeqIO;

my $pattern = shift or die $usage;
my $db = Bio::DB::GenPept->new;
my $searchio = Bio::SearchIO->new( -format => 'blast', -file   => '2-remote-blast.out' );

while ( my $result = $searchio->next_result() ) {
    while( my $hit = $result->next_hit ) {
        my ($organism) = $hit->description() =~ m/\[(.*)\]/i;
        if ($organism =~ /$pattern/i) {
            my $accession = $hit->accession;
            my $sequence = $db->get_Seq_by_acc($accession);
            $output_sequence_io = Bio::SeqIO->new( -file => ">$accession.fasta", -format => 'Fasta');
            $output_sequence_io->write_seq($sequence);
        }
    }
}