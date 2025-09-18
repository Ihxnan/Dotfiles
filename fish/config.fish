if status is-interactive
    # Commands to run in interactive sessions can go here
    export EDITOR=/usr/bin/nvim
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    set -x PATH $PATH ~/bin/
    set -x BROWSER /usr/bin/chromium
end
