#! /usr/bin/env bash

if [ -n "$CI" ] && [ -z "$TRAVIS" ] && [ -z "$GITHUB_ACTIONS" ] && [ -z "$CIRCLECI" ] && [ -z "$JENKINS_URL" ] && [ -z "$GITLAB_CI" ]; then
    echo "Running in an unknown CI system"
else
    case "$CI_NAME" in
    "travis")
        echo "Running in Travis CI"
        ;;
    "github")
        echo "Running in GitHub Actions"
        ;;
    "circleci")
        echo "Running in CircleCI"
        ;;
    "jenkins")
        echo "Running in Jenkins CI"
        ;;
    "gitlab")
        echo "Running in GitLab CI"
        ;;
    *)
        echo "Running in a known CI system, but cannot determine which one"
        ;;
    esac
fi

echo "ci = $CI"
echo "gihub_actions = $GITHUB_ACTIONS"
