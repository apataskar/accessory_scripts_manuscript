#>sp|P31946|1433B_HUMAN 14-3-3 protein beta/alpha OS=Homo sapiens OX=9606 GN=YWHAB PE=1 SV=3
#MTMDKSELVQKAKLAEQAERYDDMAAAMKAVTEQGHELSNEERNLLSVAYKNVVGARRSSWRVISSIEQKTERNEKKQQMGKEYREKIEAELQDICNDVLELLDKYLIPNATQPESKVFYLKMKGDYFRYLSEVASGDNKQTTVSNSQQAYQEAFEISKKEMQPTHPIRLGLALNFSVFYYEILNSPEKACSLAKTAFDEAIAELDTLNEESYKDSTLIMQLLRDNLTLWTSENQGDEGDAGEGEN
#--
#HepB_genA.fasta     Hep_G_proteins.txt
#G A L M F W K Q E S P V I C Y H R N D T U
open (FH,"human_ids.txt");
@file=<FH>;

open (FH3,">output_HUMAN_new_details_count.txt");

print FH3  "id\tG\tA\tL\tM\tF\tW\tK\tQ\tE\tS\tP\tV\tI\tC\tY\tH\tR\tN\tD\tT\tU\n";

foreach $line (@file)
{

chomp ($line);
print $line."\n";

`grep -A 1 -w \"$line\" uniprot_mod.fasta  > tmp.txt`;

open (FH2, "tmp.txt");
@file2=<FH2>;

$sequence= $file2[1];
$length_seq= length $sequence;

$count_G= ($sequence =~ s/G/G/g);


$count_A= ($sequence =~ s/A/A/g);


$count_L= ($sequence =~ s/L/L/g);


$count_M= ($sequence =~ s/M/M/g);


$count_F= ($sequence =~ s/F/F/g);


$count_W= ($sequence =~ s/W/W/g);


$count_K= ($sequence =~ s/K/K/g);


$count_Q= ($sequence =~ s/Q/Q/g);


$count_E= ($sequence =~ s/E/E/g);


$count_S= ($sequence =~ s/S/S/g);


$count_P= ($sequence =~ s/P/P/g);


$count_V= ($sequence =~ s/V/V/g);


$count_I= ($sequence =~ s/I/I/g);


$count_C= ($sequence =~ s/C/C/g);


$count_Y= ($sequence =~ s/Y/Y/g);


$count_H= ($sequence =~ s/H/H/g);


$count_R= ($sequence =~ s/R/R/g);


$count_N= ($sequence =~ s/N/N/g);


$count_D= ($sequence =~ s/D/D/g);


$count_T= ($sequence =~ s/T/T/g);


$count_U= ($sequence =~ s/U/U/g);


print FH3 $line."\t".$count_G."\t".$count_A."\t".$count_L."\t".$count_M."\t".$count_F."\t".$count_W."\t".$count_K."\t".$count_Q."\t".$count_E."\t".$count_S."\t".$count_P."\t".$count_V."\t".$count_I."\t".$count_C."\t".$count_Y."\t".$count_H."\t".$count_R."\t".$count_N."\t".$count_D."\t".$count_T."\t".$count_U."\n";

print $line."\t".$count_G."\t".$count_A."\t".$count_L."\t".$count_M."\t".$count_F."\t".$count_W."\t".$count_K."\t".$count_Q."\t".$count_E."\t".$count_S."\t".$count_P."\t".$count_V."\t".$count_I."\t".$count_C."\t".$count_Y."\t".$count_H."\t".$count_R."\t".$count_N."\t".$count_D."\t".$count_T."\t".$count_U."\n";


}

close (FH);
close (FH3);

