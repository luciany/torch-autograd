package = "autograd"
version = "scm-1"

source = {
   url = "",
   branch = "master",
}

description = {
   summary = "Automatic differentiation for Torch.",
   homepage = "",
   license = "MIT",
}

dependencies = {
   "torch >= 7.0",
   "trepl",
   "penlight",
   "totem",
}

build = {
   type = "builtin",
   modules = {
      ['autograd.init'] = 'src/init.lua',
      ['autograd.main'] = 'src/main.lua',
      ['autograd.util'] = 'src/util.lua',
      ['autograd.node'] = 'src/node.lua',
      ['autograd.model'] = 'src/model.lua',
      ['autograd.loss'] = 'src/loss.lua',
      ['autograd.test'] = 'test/test.lua',
      ['autograd.gradcheck'] = 'src/gradcheck.lua',
      ['autograd.nnwrapper'] = 'src/nnwrapper.lua',
   },
}
