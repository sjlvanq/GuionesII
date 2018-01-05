#!/usr/bin/perl -w
# AUTHOR:      Sjlvanq
# DESCRIPTION: Basado en https://github.com/jabbalaci/Bash-Utils/blob/master/replace_accents/replace_latex_accents.pl
#
# Last update: 2017-03-20 (yyyy-mm-dd)

use strict;

(@ARGV > 0) || die();
my $file = $ARGV[0];
open (F1, "<$file") || die();

while (<F1>)
{
s#á#\\'{a}#g;
s#é#\\'{e}#g;
s#í#\\'{i}#g;
s#ó#\\'{o}#g;
s#ú#\\'{u}#g;
s#Á#\\'{A}#g;
s#É#\\'{E}#g;
s#Í#\\'{I}#g;
s#Ó#\\'{O}#g;
s#Ú#\\'{U}#g;
s#ñ#\\~{n}#g;
s#Ñ#\\~{N}#g;
s#\n#\\par\n#g;

print;
}
close F1;
