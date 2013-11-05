#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use Test::More;
use Test::Exception;

BEGIN {
    eval { require Moose };
    plan skip_all => 'Moose required for testing' if $@;
    use_ok 'WWW::eNom'
}

plan tests => 2;

lives_ok {
    WWW::eNom->new(
        username => 'resellid',
        password => 'resellpw',
        test     => 1
    );
} 'Used guts from Moose instead of Moo.'
