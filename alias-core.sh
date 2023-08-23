## screen
alias sl='screen -ls'
alias sr='screen -R'
alias sd='screen -d'

## bashrc
alias vb="vi ~/.bashrc"
alias sb="source ~/.bashrc"

## ls
alias l="ls -lhFG --color=auto"
alias ll="ls -lhFG --color=auto"
alias lll='ls -lhFG --color=auto --time-style="long-iso"'

## rm & cp
alias rmf='rm -rf'
alias cpr='cp -r'

## history
alias h="history | grep"
alias hg="history | grep"

## ssh
alias ssh-='alias | grep [s]sh-'

## conda
alias conda-a="conda activate"
alias conda-da="conda deactivate"

## docker
def_docker_exec() {
    if [ $# -eq 1 ]; then
        docker exec -it $1 bash
    else
        docker exec -it $@
    fi
}
def_docker_rmf() {
    echo "Stop $1 ..."
    docker stop $1
    echo "Remove $1 ..."
    docker rm $1
}
## 更加简洁的 docker ps
alias dl='docker ps --all --format "table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}"'
## 在容器交互式终端快速执行命令（默认执行 bash）
alias de='def_docker_exec'
## 停止并移除容器
alias drmf='def_docker_rmf'

alias dc='docker-compose'
