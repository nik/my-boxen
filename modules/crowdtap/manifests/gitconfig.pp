# ~/.gitconfig
class crowdtap::gitconfig {
  include git

  git::config::global {
    'include.path': value => '.gitconfig-ct';
  }
}
