use bytes;
use strict;

use Test::More tests => 1+6;
use Test::NoWarnings;

use Net::IDN::IDNA2003 qw(:all);

is(idna2003_to_ascii('m�ller'),'xn--mller-kva');
is(Net::IDN::IDNA2003::to_ascii('m�ller'),'xn--mller-kva');
is(Net::IDN::IDNA2003::idna2003_to_ascii('m�ller'),'xn--mller-kva');

is(idna2003_to_unicode('xn--mller-kva'),'m�ller');
is(Net::IDN::IDNA2003::to_unicode('xn--mller-kva'),'m�ller');
is(Net::IDN::IDNA2003::idna2003_to_unicode('xn--mller-kva'),'m�ller');
