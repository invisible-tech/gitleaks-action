FROM zricethezav/gitleaks:v8.17.0

LABEL "com.github.actions.name"="gitleaks-action"
LABEL "com.github.actions.description"="runs gitleaks on push and pull request events"
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="purple"
LABEL "repository"="https://github.com/zricethezav/gitleaks-action"

RUN git config --system --add safe.directory /github/workspace
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
