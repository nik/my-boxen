class projects::iris {
  boxen::project { 'iris':
    mongodb   => true,
    redis     => true,
    ruby      => '2.1.0-github1',
    source    => 'crowdtap/iris'
  }
}
