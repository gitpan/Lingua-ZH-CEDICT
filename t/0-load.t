use strict;
use Test::More tests => 4;

use_ok('Lingua::ZH::CEDICT', 'use Lingua::ZH::CEDICT');

foreach (qw(Textfile Storable MySQL)) {
    is(ref(Lingua::ZH::CEDICT->new(source => $_)), "Lingua::ZH::CEDICT::$_", 
        "New $_");
}

__END__
