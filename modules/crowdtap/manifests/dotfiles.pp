class crowdtap::dotfiles {
  include macvim
  include tmux
  include zsh

  # install a more recent verion of vim
  package { 'vim':
    require => Package['mercurial'],
    ensure  => installed;
  }
  package { 'mercurial': }

  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "crowdtap/dotfiles"
  }

  exec { "install dotfiles":
    cwd      => $dotfiles_dir,
    command  => "make install",
    provider => shell,
    creates  => "${home}/.vimrc",
    require  => Repository[$dotfiles_dir]
  }
}
