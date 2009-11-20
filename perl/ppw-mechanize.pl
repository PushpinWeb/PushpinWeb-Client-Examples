#!/usr/bin/env perl

use strict;
use warnings;

use WWW::Mechanize;
use JSON;
use YAML;

my $client = WWW::Mechanize->new(autocheck => 1);
$client->credentials($ENV{'PPW_USER'}, $ENV{'PPW_PASS'});
$client->get('http://www.pushpinweb.com/datasets/1.json');

my $json = new JSON;

print Dump($json->decode($client->content()));
