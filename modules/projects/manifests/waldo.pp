class projects::waldo {
  include rabbitmq

  boxen::project { 'waldo':
    mongodb => true,
    nginx   => true,
    ruby    => '1.9.3-p392',
    source  => 'crowdtap/waldo'
  }
}
