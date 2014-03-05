class projects::casanova {
  boxen::project { 'casanova':
    mongodb   => true,
    redis     => true,
    ruby      => '2.1.0-github1',
    source    => 'crowdtap/casanova'
  }
}
