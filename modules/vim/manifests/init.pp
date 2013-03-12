class vim {
  package { 'vim':
    require         => Package['mercurial'],
    ensure          => installed,
    install_options => [
      '--with-cscope',
      '--override-system-vim',
    ];
  }

  package { 'mercurial': }
}
