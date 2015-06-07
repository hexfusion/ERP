#!C:\Perl64\bin\perl.exe

use Plack::Builder;
use Dancer;
use Dancer::Plugin::DBIC;
use Dancer::Handler;
use lib 'lib';
#use lib '/home/sam/Apps/angler/applications/Angler/lib';
use lib "$FindBin::Bin/../../Angler/lib";
use ERP;

my $app = sub {
    load_app "ERP";
    Dancer::App->set_running_app("ERP");
    my $env = shift;
    Dancer::Handler->init_request_headers($env);
    my $req = Dancer::Request->new( env => $env );
    Dancer->dance($req);
};

builder {
    mount "/" => $app;
};

dance;
