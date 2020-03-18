alias lsa='ls -a'
alias lsla='ls -la'
alias ls.='ls -d .?* '
alias lsl='ls -l'
alias lsd='ls -dl */'
alias -g h='history | tail' # add '-N' when calling for last N commands

alias f='ag -g'
alias r='ag'

alias pgstart='pg_ctl -D /usr/local/var/postgres -l logfile start'
alias pgstop='pg_ctl -D /usr/local/var/postgres -l logfile stop'

alias apstart='apachectl start'
alias apstop='apachectl stop'
alias aprestart='apachectl -k restart'

alias juno='jupyter notebook'
alias hjuno='ssh -N -L localhost:8887:localhost:8086 hiwi &'

alias cip='fswatch -0 ~/Dropbox/Schooling/UdS/Cpp/Assignments | xargs -0 -n 1 -I {} ~/.rsync.sh &; ssh cip'
alias rna='ssh rna'
alias hiwi='ssh hiwi'

alias cdea='conda deactivate'
alias -g cenv='conda activate'
alias -g dja='django-admin'
alias -g djm='python manage.py'
alias -g jup='bundle exec jekyll serve'

alias nethack='ssh nethack@alt.org'

alias -g dc='docker-compose'
alias -g dcl='docker-compose -f local.yml'

alias -g crun='make && '
