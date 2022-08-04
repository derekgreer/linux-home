unset TMP  
unset TEMP  

export TMP=/tmp
export TEMP=/tmp

export CONVENTIONAL_GITHUB_RELEASER_TOKEN=e9cd698f99b5dd775f751d84ef94038d96234362

# Configure history
HISTSIZE=2000
HISFILESIZE=2000
export HISTCONTROL=ignorespace

# Configure shell options
shopt -s globstar


set -o vi
 
# Configure path
PATH=.:~/bin:${PATH}  
PATH=${PATH}:/mnt/c/Program\ Files/dotnet
PATH=${PATH}:/mnt/c/ProgramData/chocolatey/bin
PATH=${PATH}:/mnt/c/Program\ Files/Microsoft\ Visual\ Studio/2022/Community/Common7/IDE/
PATH=${PATH}:/mnt/c/Program\ Files/Microsoft\ Visual\ Studio/2022/Professional/Common7/IDE
PATH=${PATH}:/mnt/c/Program\ Files/Microsoft\ Visual\ Studio/2022/Professional/MSBuild/Current/Bin/amd64/
PATH=${PATH}:/mnt/c/ProgramData/apache-maven-3.6.3/bin
#PATH=${PATH}:/mnt/c/ProgramData/apache-maven-3.6.3/bin
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Professional/Common7/IDE/
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/Windows/v7.0A/Bin/x64/
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Professional/MSBuild/Current/Bin/
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/Windows/v10.0A/bin/NETFX\ 4.8\ Tools/
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Professional/Common7/IDE/
#PATH=${PATH}:/mnt/c/Program\ Files\/Terraform/
#PATH=${PATH}:/mnt/c/Users/dgreer/AppData/Local/JetBrains/Installations/dotPeek08
#PATH=${PATH}:/mnt/c/ProgramData/Anaconda3
#PATH=${PATH}:/mnt/c/Program\ Files\ \(x86\)/Notepad++/

export CYGWIN=nodosfilewarning

# Configure oh-my-posh
#eval "$(oh-my-posh --init --shell bash --config c:/Users/derek.greer/scoop/apps/oh-my-posh/current/themes/powerline.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config c:/Users/derek.greer/scoop/apps/oh-my-posh/current/themes/agnosteromp.json)"

# Configure alert style
set bell-style visible
  

# Source additional settings
. ~/.alias  
. ~/.functions  

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
