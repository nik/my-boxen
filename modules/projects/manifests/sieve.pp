class projects::sieve {
  boxen::project { 'sieve':
    mongodb => true,
    nginx   => true,
    ruby    => '2.0.0-p353',
    source  => 'crowdtap/sieve'
  }
}
