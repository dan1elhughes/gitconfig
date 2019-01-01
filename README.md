# gitconfig

Template and basic installer for my git config file.

## Usage

Create `.env` and fill in:

```
GIT_EMAIL="you@email.com"
GIT_NAME="Your Name"
GIT_SIGNING_KEY="Y0URS1GN1NGK3Y"
GIT_EDITOR="nano"
```

Then run `sh install.sh` to template out the config into `~/.gitconfig`.

*Note that this is a dumb installer - back up existing config first*
