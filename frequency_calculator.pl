open (FH,"SEQUENCES.txt");
@file =<FH>;

foreach $line (@file)
{
chomp $line;

$number = `grep $line gencode.v19.pc_translations.fa | wc -l`;

chomp ($number);

print $line."\t".$number."\n";

}
