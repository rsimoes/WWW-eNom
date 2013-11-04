
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
    "Richard Sim\x{f5}es <rsimoes AT cpan DOT org>"
  ],
  "dist_name" => "WWW-eNom",
  "dist_version" => "v1.2.3",
  "license" => "mit",
  "module_name" => "WWW::eNom",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Class::Method::Modifiers" => 0,
    "HTTP::Tiny" => 0,
    "Moo" => 0,
    "Mozilla::PublicSuffix" => 0,
    "Type::Tiny" => "0.024",
    "URI" => 0,
    "XML::LibXML::Simple" => 0,
    "perl" => "5.008"
  },
  "script_files" => [],
  "test_requires" => {
    "File::Spec" => 0,
    "HTML::Parser" => "v3.67.0",
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "Test::Warn" => 0
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "HTML::Parser" => "v3.67.0",
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.3601",
  "Test::Deep" => 0,
  "Test::Exception" => 0,
  "Test::More" => 0,
  "Test::Warn" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
