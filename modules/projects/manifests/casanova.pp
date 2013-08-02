class projects::casanova {
  include rabbitmq

  boxen::project { 'casanova':
    mongodb   => true,
    redis     => true,
    ruby      => '2.0.0-p247',
    source    => 'crowdtap/casanova'
  }
}
