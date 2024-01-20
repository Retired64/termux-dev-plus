# PATH VARIABLES

export dev="~/.termux-dev"

# SYSTEM VARIABLES

export system=$(uname -o)
export arch=$(uname -m)
export show=$(pwd)

# COLORES CLAROS

export black="\e[1;30m"
export red="\e[1;34m"
export green="\e[1;32m"
export cyan="\e[1;36m"
#export red="\e[1;31m"
export purple="\e[1;35m"
export yellow="\e[1;33m"
export white="\e[1;37m"

# COLORES OSCUROS

export dblack="\e[0;30m"
export dblue="\e[0;34m"
export dgreen="\e[0;32m"
export dcyan="\e[0;36m"
export dred="\e[0;31m"
export dpurple="\e[0;35m"
export dyellow="\e[0;33m"
export dwhite="\e[0;37m"

# COLORES DE FONDO

export bblack=$(setterm -background black)
export bred=$(setterm -background blue)
export bgreen=$(setterm -background green)
export bcyan=$(setterm -background cyan)
#export bred=$(setterm -background red)
export byellow=$(setterm -background yellow)
export bwhite=$(setterm -background white)
