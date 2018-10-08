cls
echo Create new branches from a - z and create new file + commit changes.
call create a b c d e f g h i j k l m n o p q r s t u v w x y z
echo -------------------------------------------
call create hotfix-1 hotfix-2 hotfix-3
echo -------------------------------------------
echo Merge all 3 hotfixes to the master branch.
echo "git checkout master"
echo "git merge hotfix-1 hotfix-2 hotfix-3"
echo "git push"
cmd /c "git checkout master & sleep 1 & git merge hotfix-1 hotfix-2 hotfix-3 & git push"
echo -------------------------------------------
echo Merge all 3 hotfixes to the devel branch.
echo "git devel master"
echo "git merge hotfix-1 hotfix-2 hotfix-3"
echo "git push"
cmd /c "git checkout devel & sleep 1 & git merge hotfix-1 hotfix-2 hotfix-3 & git push"
echo -------------------------------------------
echo Start making tons of merge actions between branches. :-)
echo -------------------------------------------
echo "git checkout f"
echo "git merge a b c d e"
cmd /c "git checkout f & sleep 1 & git merge a b c d e"

echo "git checkout j"
echo "git merge g h i"
cmd /c "git checkout j & sleep 1 & git merge g h i"

echo "git checkout p"
echo "git merge k l m n o"
cmd /c "git checkout p & sleep 1 & git merge k l m n o"

echo "git checkout t"
echo "git merge q r s"
cmd /c "git checkout t & sleep 1 & git merge q r s"

echo "git checkout z"
echo "git merge u v w x y"
cmd /c "git checkout z & sleep 1 & git merge u v w x y"

echo "git checkout p"
echo "git merge f"
cmd /c "git checkout & sleep 1 p & git merge f"

echo "git checkout j"
echo "git merge k u v"
cmd /c "git checkout j & sleep 1 & git merge k u v"

echo "git checkout l"
echo "git merge t"
cmd /c "git checkout l & sleep 1 & git merge t"

echo -------------------------------------------
