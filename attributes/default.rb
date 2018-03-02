
default['workup-brentm5']['home_dir'] = Dir.home

default['workup-brentm5']['brew_taps'] = [
  'caskroom/cask',
  'thoughtbot/formulae'
]

default['workup-brentm5']['brew_packages'] = [
  'awscli',
  'bash',
  'git',
  'jq',
  'maven',
  'pdsh',
  'phantomjs',
  'pick',
  'readline',
  'reattach-to-user-namespace',
  'rcm',
  'siege',
  'sl',
  'tree',
  'tmux',
  'vim',
  'wget',
  'zplug',
  'watch'
]

default['workup-brentm5']['cask_packages'] = [
  'slate',
  'vlc',
  'vagrant',
  'zoomus'
]
default['workup-brentm5']['asdf']['ruby'] = {
  'versions': [
    '2.3.0',
    '2.3.5',
    '2.4.2',
  ]
}

default['workup-brentm5']['asdf']['nodejs'] = {
  'versions': [
    '0.12.18',
    '6.12.0',
    '9.2.0',
  ]
}

default['workup-brentm5']['binaries'] = {
  'ftree': {
    'url': 'https://github.com/thoughtbot/ftree/blob/master/dist/ftree-darwin-amd64?raw=true',
    'checksum': 'a7342c0f695e229092aa304e2ffd7908035e9ff6e237acdf4650e2783c862212'
  }
}

default['workup-brentm5']['scripts'] = [
  'tmux-spotify-info',
  'git-working-history'
]
