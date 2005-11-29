#!/usr/bin/perl

use strict;
use inc::Module::Install;

name            ('Test-use-ok');
version_from    ('lib/Test/use/ok.pm');
abstract_from   ('lib/Test/use/ok.pm');
author          ('Autrijus Tang <autrijus@autrijus.org>');
requires        ('Test::More');
license         ('perl');

&WriteAll( sign => 1 );
