#!/usr/bin/perl -w

# Copyright (c) 2002 Christian Renz <crenz@web42.com>
# This program is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself.

use lib '../lib';

use strict;
use warnings;
use Lingua::ZH::CEDICT;

my $dict = Lingua::ZH::CEDICT->new(source        => 'Textfile',
                                   filename      => 'cedict.utf8',
                                   targetCharset => '');

print STDERR "Reading CEDICT...\n";
$dict->init();

print STDERR "Storing dictionary data...\n";
my $store = Lingua::ZH::CEDICT->new(source   => 'Storable',
                                    filename => '../lib/Lingua/ZH/CEDICT/CEDICT.store');

$store->importData($dict);

# eof ***********************************************************************