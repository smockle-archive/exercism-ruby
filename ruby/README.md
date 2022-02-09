# Ruby

Solutions to [Exercism](https://exercism.org/dashboard) exercises in the [Ruby track](https://exercism.org/tracks/ruby).

## Setup

Refer to Exercism’s [Working Locally](https://exercism.org/docs/using/solving-exercises/working-locally) documentation for details.

```sh
# Install the Exercism CLI
$ brew install exercism

# Authenticate with the Exercism CLI
# (Obtain token from https://exercism.org/settings/api_cli)
$ exercism configure --token=<your-api-token>

# Clone this repo to "$HOME/Developer/exercism"
$ mkdir -p "$HOME/Developer" && cd $_ && git clone https://github.com/smockle/exercism && cd "$HOME/Developer/exercism/ruby"

# Configure the Exercism CLI to use this repo
$ exercism configure -w "$HOME/Developer/exercism"

# Install dependencies
# - `minitest` is required by Exercism
# - `rubocop` provides Ruby linting and formatting
# - `rbs` and `steep` provide Ruby typing
# (Assuming Ruby has already been installed, via `rbenv`)
$ bundle install

# Install editor extensions
# (For example, VS Code extensions in .vscode/extensions.json)
# - `rebornix.ruby` and `wingrunr21.vscode-ruby` provide syntax highlighting, linting, and formatting
# - `soutaro.rbs-syntax` and `soutaro.steep-vscode` provide syntax highlighting and typing
# - `castwide.solargraph` provides go-to-definition and Intellisense

# Configure editor
# (For example, VS Code configuration in .vscode/settings.json)
# "ruby.lint": {
#   "rubocop": {
#     "forceExclusion": true
#   }
# },
# "ruby.format": "rubocop",
# "[ruby]": {
#   "editor.defaultFormatter": "rebornix.ruby"
# },
```

### Usage

```sh
# Download an exercise
# (This command can be copy-pasted from exercise pages)
$ exercism download --exercise=<exercise-slug> --track=ruby && cd <exercise-slug>

# Copy Steep config into exercise directory
# (One Steep config can’t be shared by all exercises, because
# there are naming conflicts between them)
$ ln -s ../Steepfile Steepfile

# Stub Ruby types
$ rbs prototype rb <exercise-slug>.rb > <exercise-slug>.rbs

# Complete the exercise

# Check the solution
$ ruby <exercise-slug>_test.rb

# Submit the solution
$ exercism submit <exercise-slug>.rb
```
