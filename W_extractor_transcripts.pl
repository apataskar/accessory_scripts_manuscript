#ENST_ids.txt
#gencode.v19.pc_translations.fa

open (FH,"ENST_ids.txt");
@file =<FH>;

foreach $line (@file)
{
chomp ($line);

$id="";$id2="";
if ($line=~m/(.*)\t(.*)/)
{
$id = $1;
$id2=$2;
}

$cur = `grep -A 1 $id gencode.v19.pc_translations.fa`;

@lines= split ( "\n", $cur);
$sequence =  $lines[1];

$number= scalar( @{[ $sequence=~/W/gi ]} );

print $id."\t".$id2."\t".$number."\n";

}
