@echo off
SETLOCAL EnableDelayedExpansion
for %%x in (%*) do (
echo ---------------------------------------
echo Create new feature branch '%%x'
echo "git checkout -b %%x"
echo "echo %%x > src\%%x.py"
echo "git add ."
echo "git commit -m new_feature_%%x_created."
echo "git checkout devel"
cmd /v /c "git checkout -b %%x & sleep 1 & echo %%x > src\%%x.py & git add . & git commit -m new_feature_%%x_created. & git checkout devel"
echo ---------------------------------------
)