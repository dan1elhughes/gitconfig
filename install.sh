#!/usr/bin/env bash

. .env

# Set the comment variables if the email/name/key variables are empty.
[ -z "$GIT_EMAIL" ] && _if_email=';'
[ -z "$GIT_NAME" ] && _if_name=';'
[ -z "$GIT_SIGNING_KEY" ] && _if_key=';'

# Run the template through sed as a lazy templating language, and output to the final ~/.gitconfig location
cat "./gitconfig" | \
sed -e "s/{{ _if_email }}/$_if_email/g" | \
sed -e "s/{{ GIT_EMAIL }}/$GIT_EMAIL/g" | \
sed -e "s/{{ _if_name }}/$_if_name/g" | \
sed -e "s/{{ GIT_NAME }}/$GIT_NAME/g" | \
sed -e "s/{{ _if_key }}/$_if_key/g" | \
sed -e "s/{{ GIT_KEY }}/$GIT_SIGNING_KEY/g" | \
sed -e "s/{{ GIT_EDITOR }}/$GIT_EDITOR/g" \
> "$HOME/.gitconfig"

# Done!
echo ":: $HOME/.gitconfig"
