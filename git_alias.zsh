git config --global alias.logp 'log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09%C(Cyan)%an:  %C(reset)%s" --date=short'


# git push set upstream
git config --global alias.pushu '!f() { \                                                                                                    
branch=$(git rev-parse --abbrev-ref HEAD); \
if [ "$branch" != "main" ] && [ "$branch" != "master" ]; then \
  git push -u origin $branch; \
else \
  echo "Currently on $branch branch, aborting..."; \
fi; \
}; f'

git config --global alias.pushu '!f() { branch=$(git rev-parse --abbrev-ref HEAD); if [ "$branch" != "main" ] && [ "$branch" != "master" ]; then git push -u origin $branch; else echo "Currently on $branch branch, aborting..."; fi; }; f'