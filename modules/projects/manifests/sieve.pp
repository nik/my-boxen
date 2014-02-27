class projects::sieve {
  boxen::project { 'sieve':
    mongodb => true,
    nginx   => true,
    ruby    => '2.1.0-github1',
    source  => 'crowdtap/sieve'
  }
}
