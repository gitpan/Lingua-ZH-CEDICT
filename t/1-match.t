use strict;
use Test::More tests => 3;
use Lingua::ZH::CEDICT;

my $dict = Lingua::ZH::CEDICT->new();

ok($dict->init(), "Init stored dictionary");
$dict->startMatch('house');
my $m = $dict->match();
ok(ref($m), "Search for 'house'");
ok(ref($m), "Further search for 'house'");
