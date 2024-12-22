vim.api.nvim_create_autocmd('FileType', {
	-- This handler will fire when the buffer's 'filetype' is "lua"
	pattern = 'lua',
	callback = function(ev)
		vim.lsp.start({
			name = 'lua_ls',
			cmd = { 'lua-language-server' },
			root_dir = vim.fs.root(ev.buf, { ".git", ".luarc.json", "lsp.workspace.marker" }),
			settings = {
				Lua = {
					completion = {
						callSnippet = 'Replace',
					},
					-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
					-- diagnostics = { disable = { 'missing-fields' } },
					workspace = {
						library = { '${3rd}/love2d/library', },
					},
				},
			}
		})
	end,
})

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc, opts)
			vim.keymap.set(opts and opts.modes or 'n', keys, func,
				{ buffer = event.buf, desc = 'LSP: ' .. desc })
		end

		-- Jump to the definition of the word under cursor
		map('gd', vim.lsp.buf.definition, 'Goto [d]efinition')

		-- Find references for the word under cursor
		map('gr', vim.lsp.buf.references, 'Goto [r]eferences')

		-- Jump to the implementation of the word under cursor
		map('gI', vim.lsp.buf.implementation, 'Goto [I]mplementation')

		-- Jump to the type of the word under cursor
		map('gD', vim.lsp.buf.type_definition, 'Goto Type [D]efinition')

		-- Find all the symbols in your current document
		map('<leader>cs', vim.lsp.buf.document_symbol, 'Document [s]ymbols')

		-- Rename the symbol under cursor
		map('<leader>cr', vim.lsp.buf.rename, '[r]ename')

		-- Execute a code action, usually cursor needs to be on top of an error
		-- or a suggestion from your LSP for this to activate.
		map('<leader>ca', vim.lsp.buf.code_action, 'Code [a]ction', { modes = { 'n', 'v' } })

		-- Opens a popup that displays documentation about the word under cursor
		map('K', vim.lsp.buf.hover, 'Hover Documentation')

		-- Jump to the declaration of the word under cursor
		map('gD', vim.lsp.buf.declaration, 'Goto [D]eclaration')

		-- The following two autocommands are used to highlight references of the
		-- word under cursor when cursor rests there for a little while.
		--
		-- When you move cursor, the highlights will be cleared (the second autocommand).
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.server_capabilities.documentHighlightProvider then
			local highlight_augroup = vim.api.nvim_create_augroup('lsp-highlight', { clear = false })
			vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.clear_references,
			})

			vim.api.nvim_create_autocmd('LspDetach', {
				group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
				callback = function(detach_event)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = detach_event.buf }
				end,
			})
		end
		--
		-- if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint and not vim.lsp.inlay_hint.is_enabled() then
		--   vim.lsp.inlay_hint.enable()
		-- end
	end,
})
