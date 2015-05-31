package ERP;
use Dancer ':syntax';
use Dancer::Plugin::DBIC;
use DateTime;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

true;
