require("bufferline").setup{
    options={
        numbers="both",
        diagnostics="nvim_lsp",
        diagnostics_update_in_insert=true,
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
