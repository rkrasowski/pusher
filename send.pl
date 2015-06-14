#!/usr/bin/perl
use strict;
use warnings;
use WWW::Pusher;

    my $pusher    = WWW::Pusher->new(
                         auth_key => '2edbc97xxxxxxx',
                         secret => 'd5bd64de24xxxxxxxx47e7',
                         app_id => '124655',
                         channel => 'test_channel' );


	my $data = `date`;


    my $response  = $pusher->trigger(event => 'my_event', data => $data);
    my $sock_auth = $pusher->socket_auth('socket_auth_key');

