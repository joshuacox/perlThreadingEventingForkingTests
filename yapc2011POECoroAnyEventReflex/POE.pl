# Sleep sort using POE
use 5.12.0;
use POE;

POE::Session->create(
    inline_states => {
        _start => sub {
            $_[KERNEL]->delay_add(ding => $_, $_)
                foreach @ARGV;
        },
        ding => sub {
            print "$_[ARG0]\n";
        }
    }
);

POE::Kernel->run();
