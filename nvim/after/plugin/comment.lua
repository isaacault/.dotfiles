local ft = require('Comment.ft')

-- OpenCL files (*.cl) get read as lisp. Quick fix
ft.set('lisp', {'//%s', '/*%s*/'})
