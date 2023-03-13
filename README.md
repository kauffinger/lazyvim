# 💤 LazyVim flavored

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Additions

### LSP

- Tailwind support
- Intelephense for php (best in class for Laravel development)

### Formatting

- Eslintd for when an `.eslintrc.json` is found (use the eslint prettier plugin for best performance and compatibility)
- Tailwind color preview

### Theme

- Changed to gruvbox

## Troubleshooting

If opening a py file leads to pyright analyzing your whole library, make sure to add an empty `pyrightconfig.json` into the file root.
This can be your $HOME folder or for example on darwin using homebrew it could be `/opt/homebrew/`.
