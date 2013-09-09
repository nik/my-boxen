class projects::monocle {
  include rabbitmq

  boxen::project { 'monocle':
    mongodb   => true,
    redis     => true,
    ruby      => '2.0.0-p247',
    source    => 'crowdtap/monocle'
  }
}
