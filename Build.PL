
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Interact with eNom, Inc.'s reseller API",
  "dist_author" => [
    "Richard Sim\303\265es <rsimoes AT cpan DOT org>"
  ],
  "dist_name" => "WWW-eNom",
  "dist_version" => "v1.2.0",
  "license" => "mit",
  "module_name" => "WWW::eNom",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "HTTP::Tiny" => 0,
    "Moo" => 0,
    "Mozilla::PublicSuffix" => 0,
    "Type::Utils" => 0,
    "Types::Standard" => 0,
    "URI" => 0,
    "XML::LibXML::Simple" => 0,
    "perl" => "5.008"
  },
  "script_files" => [],
  "test_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "HTML::Parser" => "v3.67.0",
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "Test::Warn" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
