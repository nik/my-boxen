class projects::crowdtro {
  boxen::project { 'crowdtro':
    mongodb => true,
    nodejs  => 'v0.10.13',
    nginx   => true,
    source  => 'crowdtap/crowdtro'
  }
}
