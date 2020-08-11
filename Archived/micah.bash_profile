alias ls='ls -G'
alias ll='ls -l -G'

PS1='\e[33m\u: \e[34m\W\e[31m\$\e[0m '

# Virtual Envs for Python3
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
WORKON_HOME=$HOME/.virtualenvs
PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh
# workon <project>
# deactivate (in project)
# mkvirtualenv <name>
# rmvirtualenv <name>
