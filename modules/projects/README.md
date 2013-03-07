# Project Manifests

Project manifests live in `modules/projects/manifests/$project.pp`. A
simple project manifest example:

```puppet
class projects::trollin {
  include icu4c
  include phantomjs

  boxen::project { 'trollin':
    dotenv        => true,
    elasticsearch => true,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'boxen/trollin'
  }
}
```

Available options:
```
dir =>
  The directory to clone the project to.
  Defaults to "${boxen::config::srcdir}/${name}".

dotenv =>
  If true, creates "${dir}/.env" from
  "puppet:///modules/projects/${name}/dotenv".

elasticsearch =>
  If true, ensures elasticsearch is installed.

memcached =>
  If true, ensures memcached is installed.

mongodb =>
  If true, ensures mongodb is installed.

mysql =>
  If set to true, ensures mysql is installed and creates databases named
  "${name}_development" and "${name}_test".
  If set to any string or array value, creates those databases instead.

nginx =>
  If true, ensures nginx is installed and uses standard template at
  modules/projects/templates/shared/nginx.conf.erb.
  If given a string, uses that template instead.

postgresql =>
  If set to true, ensures postgresql is installed and creates databases
  named "${name}_development" and "${name}_test".
  If set to any string or array value, creates those databases instead.

redis =>
  If true, ensures redis is installed.

ruby =>
  If given a string, ensures that ruby version is installed.
  Also creates "${dir}/.ruby-version" with content being this value.

source =>
  Repo to clone project from. REQUIRED. Supports shorthand <user>/<repo>.
```

With the above, as long as our app is configured to listen on a **socket** at
`"#{ENV['BOXEN_SOCKET_DIR']}"/trollin`, you'll now be able to run its local
server and visit http://trollin.dev/ to access the app in dev.

For further documentation on how to use the `boxen::project` type,
take a look at the documentation in the
[source](https://github.com/boxen/puppet-boxen/blob/master/manifests/project.pp#L1-L46).
