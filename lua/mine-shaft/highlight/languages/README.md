# 🖍️ Highlighting different languages

## 📌 Summary

This directory contains files with syntax [highlight arguments][vim-help-highlight-args] for specific programming languages. _These are not what Neovim calls [syntax files][vim-help-syn-files]._ Instead, each language’s file in this directory uses Neovim’s default highlight arguments for that language and then makes adjustments based on the color scheme.

👀 See Neovim user documentation: [`:help highlight`][vim-help-highlight]

## 🚧 Maintenance

To help maintain a language’s highlighting over time, that language’s full list of built-in highlight groups appears within the language module’s `get()` function. Line breaks match Neovim’s syntax files for that language. Neovim’s default highlight arguments are commented out.

## 📝 Making changes

Follow these steps to change a default highlight argument:

1. Remove the `-- ` at the beginning of the line to uncomment that highlight group
2. Copy the default value to a comment at the end of the line
3. Make your desired changes to the argument table (inside the braces `{}`)

For example, `htmlEndTag` is linked to `Identifier` by default:

```lua
-- html.lua before changes
-- htmlEndTag = {link = 'Identifier'},
```

But you want to link it to `htmlTag` instead:

```lua
-- html.lua after changes
htmlEndTag = {link = 'Identifier'}, -- Identifier
```

👣 Following this process should make it easier to restore defaults without tracking down a syntax file each time.

## 👷🏽 Contributing

Issues and pull requests are welcome, especially if you have idea’s about how make the color scheme more accessible and user friendly.

[vim-help-highlight]: https://neovim.io/doc/user/syntax.html#%3Ahighlight
[vim-help-highlight]: https://neovim.io/doc/user/syntax.html#highlight-args
[vim-help-syn-files]: https://neovim.io/doc/user/syntax.html#%3Asyn-files
