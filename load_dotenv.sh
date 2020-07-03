CURRENT_BRANCH=$(git symbolic-ref --short HEAD)

[[ -f .env ]] && source .env

[[ -f .env.stage && $CURRENT_BRANCH == develop ]] && source .env.stage

[[ -f .env.production && $CURRENT_BRANCH == master ]] && source .env.production

exit 0
