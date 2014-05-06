# Sleep sort using AnyEvent
use 5.12.0;
use EV;
use AE;
my @w;
for my $i (@ARGV) {
    push @w, AE::timer $i, 0,
        sub { print "> $i\n" }
}
EV::loop
