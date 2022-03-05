⚠️  Work in progresss

<img src="./screen.png" alt="screenshot of vim showing javascript code with the bloop-color theme" />

# BLOOP Theme for Vim

High contrast theme with a minimal, modern color palette.

- dark theme
- true colors support
- 256 colors support
- lightline support
- fzf support
- works with vim and nvim[^1]
- special care for TypeScript + React[^2]

## Installation and configuration

```vim

" install using your plugin manager of choice.
" eg vim-plug:
Plug 'nocksock/bloop-vim'

" (...)

set termguicolors " enable true color support

" Available options:
" ------------------

" toggle setting of background color
" useful if you want to keep your terminal's background (eg. for transparency)
" default: 1
let g:bloop_set_background = 0

" toggle italics
" default: 1
let g:bloop_use_italics = 0

" remember to set colorscheme *after* options in order for them to take effect
colorscheme bloop
```


## Contribute

Feel free to open an Issue or PR when something looks broken.

This repo contains a `test` folder which should make it rather easy to test the
theme in an isolated and comfortable environment with autoreloading using
nodemon and tmux:

Requirements:
- tmux
- nodemon (`npm i -g nodemon`)

```sh
cd <path-to-theme>/test
./start-tmux
```

This will start a tmux session containing a watcher and a vim session started
with the `vim` executable script in the test folder. Adjust that if you want to
open a different file or whatever you need it to do. The `test.vim` will set
basic options.

I hope this is enough to get you started.

TODO: finish this section


## Note!

While the color palette is _close_ to done, it's not quite there yet and I keep
tweaking it from time to time as well as the overall highlight groups. So if
you're using this, expect some changes to the theme when updating your plugins - 
although they'll be minor and most will be barely noticeable.

[^1]: Tested with vim 8.2 and nvim 0.6.1 using polyglot and tsserver.
[^2]: That's what I primarily work with, but I'm also looking into rust, and
golang. So those will get special care as well. And Lua will be adjusted over
time as well, since I finally switched to nvim.


## Roadmap

- [ ] (wip) Finalize dark color palette
- [ ] Include color palette for terminals (Alacritty, Kitty, iTerm2)
- [ ] Create light palette
- [ ] finalize 256 color palette
- [ ] finalize 16 colors support via terminal palette
- [ ] Special care for rust
- [ ] Special care for golang
- [ ] Special care for lua
- [ ] Create a docker image for the testing deps
