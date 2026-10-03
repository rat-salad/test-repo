name=tmux
description="tmux is a terminal multiplexer."
version=1.0.0
files="/usr/bin/tmux",
dependencies=""
source=git+https://github.com/tmux/tmux.git

build() {
    sh autogen.sh
    ./configure && make
    install -Dm755 tmux /usr/bin
}
build
