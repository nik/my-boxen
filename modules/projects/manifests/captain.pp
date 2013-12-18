class projects::captain {
  boxen::project { 'captain':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3-p392',
    source    => 'crowdtap/captain'
  }
}
