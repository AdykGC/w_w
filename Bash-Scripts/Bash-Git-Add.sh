echo " "; echo "GIT | remote"; git remote -v
echo " "; echo "GIT | branch"; git branch
echo " "; echo "GIT | add";    git add .
echo " "; echo "GIT | commit"; git commit -m "1"
echo " "; echo "GIT | push";   git push origin main
echo " "; echo "GIT | rebase"; git pull --rebase origin main