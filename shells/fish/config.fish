

#set -x GOPATH /home/oly/go
#set -x GO15VENDOREXPERIMENT 1
#set PATH $GOPATH/bin $PATH

set -x ALTERNATE_EDITOR ""
set -x EDITOR "emacsclient -t"                  # $EDITOR should open in terminal
set -x VISUAL "emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate

alias emax="emacsclient -t"                      # used to be "emacs -nw"
alias smax="sudo emacsclient -t"                # used to be "sudo emacs -nw"
alias gmax="emacsclient -c -a emacs"             # new - opens the GUI with alternate non-daemon

set -x DRONE_SERVER https//ci.digitaloctave.com
set -x DRONE_TOKEN eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0Ijoib2x5IiwidHlwZSI6InVzZXIifQ.6LnmEsK9a3fWQ2BgU59Tcolpa6CbgksmPz2mGZX0Gyo

set -gx PATH /home/oly/.local/bin $PATH
