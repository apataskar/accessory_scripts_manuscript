#>ENST00000335137.3|ENSG00000186092.4|OTTHUMG00000001094.1|OTTHUMT00000003223.1|OR4F5-001|OR4F5|918|CDS:1-918|
open (FH,"xaa");
@file =<FH>;

foreach $line (@file)
{

chomp ($line);
$id1="";
$id2="";
$W="";
if ($line =~m/(.*)\t(.*)\t(.*)\t(.*)/)
{
$id1 = $1;
$id2= $3;
$W = $4;

}

$cur = `grep $id2 gencode.v19.pc_transcripts.fa`;

$cds="";

if ($cur =~m/CDS\:(.*)-/)
{
$cds= $1;
}

print $id1."\t".$id2."\t". $W."\t".$cds."\n";


}
