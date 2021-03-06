#!/usr/bin/env bash
#
# Set the configuration necessary to the deployment.

export INFO_COLOR="\e[34m"
export SUCCESS_COLOR="\e[1;32m"
export ERROR_COLOR="\e[1;31m"
export NO_COLOR="\e[0m"

isAppBuild() {
  if [[ -z "$ASSETS_BUILD" ]]; then
    return 0;
  fi

  return 1;
}

isAssetsBuild() {
  if [[ true = "$ASSETS_BUILD" ]]; then
    return 0;
  fi

  return 1;
}

isDeployBuild() {
  if [[ -z "$DEPLOY_BUILD" ]] || [[ -z "$TRAVIS_PULL_REQUEST" ]] || [[ -z "$TRAVIS_BRANCH" ]]; then
    return 0;
  fi;

  if [[ true = "$DEPLOY_BUILD" ]] && [[ false != "$TRAVIS_PULL_REQUEST" ]] && [[ "master" = "$TRAVIS_BRANCH" ]]; then
    return 0
  fi

  return 1
}

# Argument $1 = message
# Argument $2 = log level, accept `"info"`, `"success"` or `"error"`. Default at `"info"
log() {
  local color="$INFO_COLOR"
  local message="$1"
  local level="$2"

  case "$level" in
    --success)
      color="$SUCCESS_COLOR"
      ;;
    --error)
      color="$ERROR_COLOR"
      ;;
  esac

  if [ -z "$message" ]; then
    echo "No argument supplied"

    return 1
  fi

  echo -en "${color}${message}${NO_COLOR}\n"
}

export -f isAppBuild
export -f isAssetsBuild
export -f isDeployBuild
export -f log
