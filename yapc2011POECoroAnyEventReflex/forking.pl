use 5.12.0;
foreach my $t (@ARGV) {
  if(!fork()) {
    sleep $t;
    say $t;
    exit;
  }
}
sleep while 1; # Loop forever
