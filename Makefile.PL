use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'ABSTRACT'     => 'Interface for CEDICT, a Chinese-English dictionary',
    'AUTHOR'       => 'Christian Renz <crenz@web42.com>',
    'NAME'         => 'Lingua::ZH::CEDICT',
    'PREREQ_PM'    => {}, # e.g., Module::Name => 1.1
    'VERSION_FROM' => 'lib/Lingua/ZH/CEDICT.pm', # finds $VERSION
);
