# Tmux open

Plugin for opening highlighted selection directly from Tmux copy mode.

### Key bindings

In tmux copy mode:

- `o` - "open" a highlighted selection with the system default program. `open`
    for OS X or `xdg-open` for Linux.
- `Ctrl-o` - open a highlighted selection with the `$EDITOR`

### Examples

In copy mode:

- highlight `file.pdf` and press `o` - file will open in the default PDF viewer.
- highlight `file.doc` and press `o` - file will open in system default `.doc`
  file viewer.
- highlight `http://example.com` and press `o` - link will be opened in the
  default browser.
- highlight `file.txt` and press `Ctrl-o` - file will open in `$EDITOR`.

### Screencast

[![screencast screenshot](/video/screencast_img.png)](http://vimeo.com/102455265)

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @tpm_plugins "          \
      tmux-plugins/tpm             \
      tmux-plugins/tmux-open       \
    "

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/tmux-plugins/tmux-open ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/open.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.

### Configuration

> How can I change the default "o" key binding to something else? For example,
> key "x"?

Put `set -g @open 'x'` in `tmux.conf`.

> How can I change the default "Ctrl-o" key binding to "Ctrl-x"?

Put `set -g @open-editor 'C-x'` in `tmux.conf`.

### Other goodies

`tmux-open` works great with:

- [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat) - a plugin for
  regex searches in tmux and fast match selection
- [tmux-yank](https://github.com/tmux-plugins/tmux-yank) - enables copying
  highlighted text to system clipboard

### License

[MIT](LICENSE.md)
