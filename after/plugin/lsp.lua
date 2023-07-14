
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'pythonserver',
})
local format_opts = {
    format_opts = {
        async = false, 
        timeout_ms = 5000
    },
    servers = {
        ['lua_ls'] = {'lua'},
        ['rust_analyzer'] = {'rust'},
        ['pylsp'] = {'python'},
        ['tsserver'] = {'javascript', 'typescript'},
    }
}
lsp.format_mapping('<leader>l', format_opts)
lsp.format_on_save(format_opts)
lsp.setup()
