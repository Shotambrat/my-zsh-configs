#Shell script for open WebStorm for current path (if first argument would ".")
ws() {
    # $1 - это первый аргумент, который будет передан WebStorm
    open -na "WebStorm.app" --args "$1" > /dev/null 2>&1 &
}
