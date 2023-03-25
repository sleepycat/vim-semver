# vim-semver

This doesn't actually work yet! It's a toy to tinker with Vim.
Eventually this will be a small vim plugin to increment and decrement [semver](https://semver.org) strings in vim.

## Using it

Using `<Leader>im` will increment to the next major version.
Using `<Leader>in` will increment to the next minor version.
Using `<Leader>ip` will increment to the next patch version.

## Development
Run `:packadd semver.vim` to load the plugin.
Unit tests are using [vspec](http://vimcasts.org/episodes/an-introduction-to-vspec/).
Run them with `make test`
