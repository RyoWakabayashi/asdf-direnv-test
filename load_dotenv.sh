CURRENT_BRANCH=$(git symbolic-ref --short HEAD)

echo $CURRENT_BRANCH

[[ -f .env ]] && source .env

[[ -f .env.stage && $CURRENT_BRANCH == develop ]] && source .env.stage

[[ -f .env.production && $CURRENT_BRANCH == master ]] && source .env.production

yarn show_direnv_env

exit 0
