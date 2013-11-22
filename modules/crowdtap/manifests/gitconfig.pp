# ~/.gitconfig
class crowdtap::gitconfig {
  include git

  git::config::global {
    'alias.st': value => 'status';
    'alias.ci': value => 'commit';
    'alias.br': value => 'branch';
    'alias.co': value => 'checkout';
    'alias.df': value => 'diff';
    'alias.dc': value => 'diff --cached';
    'alias.lg': value => "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>;%Creset' --abbrev-commit";
    'alias.lol': value => 'log --graph --decorate --pretty=oneline --abbrev-commit';
    'alias.lola': value => 'log --graph --decorate --pretty=oneline --abbrev-commit --all';
    'alias.ls': value => 'ls-files';
    'alias.ign': value => 'ls-files -o -i --exclude-standard';

    'ui.color': value => 'auto';

    'color "branch".current': value => 'yellow reverse';
    'color "branch".local': value => 'yellow';
    'color "branch".remote': value => 'green';

    'color "diff".meta': value => 'yellow bold';
    'color "diff".frag': value => 'magenta bold';
    'color "diff".old': value => 'red bold';
    'color "diff".new': value => 'green bold';

    'color "status".added': value => 'yellow';
    'color "status".changed': value => 'green';
    'color "status".untracked': value => 'cyan';

    'core.editor': value => 'vim';

    'branch.autosetuprebase': value => 'always';

    'push.default': value => 'simple';
  }
}
