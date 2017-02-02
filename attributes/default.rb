
default['workup-brentm5']['home_dir'] = Dir.home

default['workup-brentm5']['brew_packages'] = [
  'wget'
]

default['workup-brentm5']['binaries'] = {
  'ftree': {
    'url': 'https://github.com/thoughtbot/ftree/blob/master/dist/ftree-darwin-amd64?raw=true',
    'checksum': 'a7342c0f695e229092aa304e2ffd7908035e9ff6e237acdf4650e2783c862212'
  }
}
