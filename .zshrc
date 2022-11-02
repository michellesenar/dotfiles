# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Custom keyboard bindings
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="apple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=/opt/homebrew/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='ls -GFh'

# productivity
alias reload="source ~/.zshrc"
alias editprofile='vim ~/.zshrc'
alias dockershow="docker ps --format '{{.ID}}\t{{.Image}}'"

# ipython
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# restart docker
alias reset_docker='docker-compose down; docker-compose pull; docker-compose build --pull console'

# git related
alias gl='git log --oneline -n 10'

# change directories
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias work='cd ~/workspace'
alias lab='cd ~/workspace/laboratory'

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# direnv
eval "$(direnv hook zsh)"

# k8s things
alias k='kubectl'
alias kaf='kubectl apply -f'
alias kca='_kca(){ kubectl "$@" --all-namespaces;  unset -f _kca; }; _kca'
alias kccc='kubectl config current-context'
alias kcdc='kubectl config delete-context'
alias kcgc='kubectl config get-contexts'
alias kcn='kubectl config set-context --current --namespace'
alias kcp='kubectl cp'
alias kcsc='kubectl config set-context'
alias kcuc='kubectl config use-context'
alias kdcj='kubectl describe cronjob'
alias kdcm='kubectl describe configmap'
alias kdd='kubectl describe deployment'
alias kdds='kubectl describe daemonset'
alias kdel='kubectl delete'
alias kdelcj='kubectl delete cronjob'
alias kdelcm='kubectl delete configmap'
alias kdeld='kubectl delete deployment'
alias kdelds='kubectl delete daemonset'
alias kdelf='kubectl delete -f'
alias kdeli='kubectl delete ingress'
alias kdelno='kubectl delete node'
alias kdelns='kubectl delete namespace'
alias kdelp='kubectl delete pods'
alias kdelpvc='kubectl delete pvc'
alias kdels='kubectl delete svc'
alias kdelsa='kubectl delete sa'
alias kdelsec='kubectl delete secret'
alias kdelss='kubectl delete statefulset'
alias kdi='kubectl describe ingress'
alias kdno='kubectl describe node'
alias kdns='kubectl describe namespace'
alias kdp='kubectl describe pods'
alias kdpvc='kubectl describe pvc'
alias kds='kubectl describe svc'
alias kdsa='kubectl describe sa'
alias kdsec='kubectl describe secret'
alias kdss='kubectl describe statefulset'
alias kecj='kubectl edit cronjob'
alias kecm='kubectl edit configmap'
alias ked='kubectl edit deployment'
alias keds='kubectl edit daemonset'
alias kei='kubectl edit ingress'
alias keno='kubectl edit node'
alias kens='kubectl edit namespace'
alias kep='kubectl edit pods'
alias kepvc='kubectl edit pvc'
alias kes='kubectl edit svc'
alias kess='kubectl edit statefulset'
alias keti='kubectl exec -ti'
alias kga='kubectl get all'
alias kgaa='kubectl get all --all-namespaces'
alias kgcj='kubectl get cronjob'
alias kgcm='kubectl get configmaps'
alias kgcma='kubectl get configmaps --all-namespaces'
alias kgd='kubectl get deployment'
alias kgda='kubectl get deployment --all-namespaces'
alias kgds='kubectl get daemonset'
alias kgdsw='kgds --watch'
alias kgdw='kgd --watch'
alias kgdwide='kgd -o wide'
alias kgi='kubectl get ingress'
alias kgia='kubectl get ingress --all-namespaces'
alias kgno='kubectl get nodes'
alias kgns='kubectl get namespaces'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods --all-namespaces'
alias kgpall='kubectl get pods --all-namespaces -o wide'
alias kgpl='kgp -l'
alias kgpn='kgp -n'
alias kgpvc='kubectl get pvc'
alias kgpvca='kubectl get pvc --all-namespaces'
alias kgpvcw='kgpvc --watch'
alias kgpw='kgp --watch'
alias kgpwide='kgp -o wide'
alias kgrs='kubectl get rs'
alias kgs='kubectl get svc'
alias kgsa='kubectl get svc --all-namespaces'
alias kgsec='kubectl get secret'
alias kgseca='kubectl get secret --all-namespaces'
alias kgss='kubectl get statefulset'
alias kgssa='kubectl get statefulset --all-namespaces'
alias kgssw='kgss --watch'
alias kgsswide='kgss -o wide'
alias kgsw='kgs --watch'
alias kgswide='kgs -o wide'
alias kl='kubectl logs'
alias kl1h='kubectl logs --since 1h'
alias kl1m='kubectl logs --since 1m'
alias kl1s='kubectl logs --since 1s'
alias klf='kubectl logs -f'
alias klf1h='kubectl logs --since 1h -f'
alias klf1m='kubectl logs --since 1m -f'
alias klf1s='kubectl logs --since 1s -f'
alias knet='kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot -- /bin/bash'
alias kpf='kubectl port-forward'
alias krh='kubectl rollout history'
alias krsd='kubectl rollout status deployment'
alias krsss='kubectl rollout status statefulset'
alias kru='kubectl rollout undo'
alias ksd='kubectl scale deployment'
alias ksss='kubectl scale statefulset'


[ -f "/Users/msenar/.ghcup/env" ] && source "/Users/msenar/.ghcup/env" # ghcup-env
