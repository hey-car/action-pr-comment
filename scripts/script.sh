#!/usr/bin/env bash

. "$(dirname "$0")/utils.sh"
. "$(dirname "$0")/gh-utils.sh"

# TODO(user): Use this helper function to check if a required env variable is set or not
check_env_var "PR_NUMBER"
check_env_var "COMMENT_MESSAGE"
check_env_var "UNIQUE_COMMENT_ID"

REPO_ORG=${GITHUB_REPOSITORY_OWNER}
REPO_NAME=$(echo "${GITHUB_REPOSITORY}" | cut -d "/" -f2)

comment_on_pull_request "${REPO_ORG}" \
  "${REPO_NAME}" \
  "${PR_NUMBER}" \
  "${COMMENT_MESSAGE}" \
  "true" \
  "unique-comment-id:${UNIQUE_COMMENT_ID}"
