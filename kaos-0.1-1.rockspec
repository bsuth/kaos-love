package = 'kaos'
version = '0.1-1'
rockspec_format = '3.0'

source = {
   url = 'git://github.com/bsuth/kaos-love',
   branch = 'master',
}

dependencies = {
  'lua = 5.1',
}

build = {
  install = {
    bin = {
      ['kaos'] = 'bin/kaos'
    }
  }
}
