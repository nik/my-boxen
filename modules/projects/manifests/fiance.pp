class projects::fiance {
  include elasticsearch
  include rabbitmq

  boxen::project { 'fiance':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3',
    source    => 'crowdtap/fiance'
  }
}
