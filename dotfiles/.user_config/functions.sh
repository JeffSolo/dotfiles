
# Compile Typescript and run
function tscr(){
    js=""
    test=""
    ignore=false
    while (( $# )); do
        case "$1" in
            -i|--ignore) ignore=true;;
            -t|--test) test="&& npm test";;
            *) js="&& node ${1:r}.js" ;;
        esac
        shift
    done

    run="tsc $test $js"
    if $ignore; then
        eval ${run//&&/;}
    else eval $run
    fi
}

# list contents after CD
function cd(){
    builtin cd "$@" && ls -C
}


function uds(){
    ~/Dropbox/Schooling/UdS/"$@"
}
