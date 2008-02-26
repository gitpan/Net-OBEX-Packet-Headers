use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Net::OBEX::Packet::Headers',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/Net/OBEX/Packet/Headers.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp' => 1.04,
    },
    add_to_cleanup      => [ 'Net-OBEX-Packet-Headers-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
