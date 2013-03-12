class projects::iris {
  include rabbitmq

  boxen::project { 'iris':
    mongodb   => true,
    redis     => true,
    ruby      => '1.9.3',
    source    => 'crowdtap/iris'
  }
}
