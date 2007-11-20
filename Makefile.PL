use 5.008008;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Template::Plugin::Iconv',
    VERSION_FROM      => 'lib/Template/Plugin/Iconv.pm',
    PREREQ_PM         => { 'Template' => 0, 'Text::Iconv' => 0},
    ($] >= 5.005 ?
    (ABSTRACT_FROM  => 'lib/Template/Plugin/Iconv.pm', AUTHOR=> 'ndix <kostya@bk.ru>') : ()),
);
