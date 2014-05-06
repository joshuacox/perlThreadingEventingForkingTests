# Sleep sort using Coro
use 5.12.0;
use Coro;
use Coro::Timer qw(sleep);

for my $i (@ARGV) {
    async {
        sleep $i;
        print "> $i\n"
    }
}
