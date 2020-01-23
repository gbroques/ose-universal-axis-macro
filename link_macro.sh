#!/bin/sh
# ----------------------------------------------------------------------------------- #
# Create a symbolic link of UniversalAxis.FCMacro to default FreeCAD macro directory. #
# ----------------------------------------------------------------------------------- #

set -x  # Print shell command before executing
set -e  # Exit shell script upon non-zero status code (error) of command

# Create temporary python script to find user's default FreeCAD Macro directory
touch find_macro_dir.py
echo "import FreeCAD" >> find_macro_dir.py
echo "print FreeCAD.getUserMacroDir(True)" >> find_macro_dir.py
echo "exit(0)" >> find_macro_dir.py

# TODO: Check if freecad command is available before executing
macro_dir=`freecad -c find_macro_dir.py | tail -1`

# Clean-up temporary python script and .pyc file
rm find_macro_dir.py*

# Soft link macro and package from repositiory to user's default FreeCAD macro directory
ln -s $(pwd)/UniversalAxis.FCMacro $macro_dir/UniversalAxis.FCMacro
ln -s $(pwd)/universalaxis $macro_dir/universalaxis
