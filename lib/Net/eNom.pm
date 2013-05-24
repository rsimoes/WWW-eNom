package Net::eNom;

use strict;
use warnings;
use utf8;
use Moo;

extends 'WWW::eNom';

warnings::warnif(
    deprecated => "This module is deprecated; use WWW::eNom instead."
);

our $VERSION = 'v1.2.0'; # VERSION
# ABSTRACT: DEPRECATED: namespace retired

1;
