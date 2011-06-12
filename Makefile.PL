use inc::Module::Install;

name            'worky';
all_from        'lib/worky.pm';

requires        'orz' => '0.12';

use_test_base;

WriteAll;
