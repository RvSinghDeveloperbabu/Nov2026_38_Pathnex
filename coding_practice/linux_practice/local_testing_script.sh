#!/bin/bash
## This script is designed to create a testing environment for local script execution.

WORKING_DIR=$(pwd)
echo "Working directory: $WORKING_DIR"
mkdir -p "$WORKING_DIR/script_testing"

touch "$WORKING_DIR/script_testing/test.sh"

echo "echo 'Hello, World!'" > "$WORKING_DIR/script_testing/test.sh"

chmod +x "$WORKING_DIR/script_testing/test.sh"
bash "$WORKING_DIR/script_testing/test.sh"

cd "$WORKING_DIR/script_testing" || exit
CURRENT_DIR=$(pwd)

mkdir -p $CURRENT_DIR/{bin,lib,config,log}/
count=$(find "$CURRENT_DIR" -maxdepth 1 -mindepth 1 -type d | wc -l | tr -d ' ')

if [ "$count" -eq 3 ];  then
    echo "Directories found:"
    find $CURRENT_DIR -maxdepth 1 -mindepth 1 -type d | awk -F/ '{print $NF}'
else
    echo "3 or fewer directories found in $CURRENT_DIR ($count)."
fi

for dir in "$CURRENT_DIR"/*/; do
    if [ -d "$dir" ]; then
        echo "Directory: $(basename "$dir")"
        file_path="$dir/"$(basename "$dir")"_file.txt"
        touch $file_path
        echo "This file contant is created by For Loop.\n File name: $(basename "$file_path")" > $file_path
        echo "Contents:"
        ls -l "$dir"
    fi
done


## checking logs and log files
echo "I am adding this line in the log output file." > log/output.log
echo "I am adding this line in the log input file." > log/input.log
echo "I am adding this line in the log error file." > log/error.log

echo "Checking logs and log files..."

ls log missing_log >> log/output.log 2>&1 
ls bin missing_bin 1>> log/input.log 2>> log/error.log
ls missing_error 2>> log/error.log

echo "Output log contents:"
cat log/output.log
echo "Input log contents:"
cat log/input.log
echo "Error log contents:"
cat log/error.log


if [ -f "log/output.log" ]; then
    echo "Output log file exists."
else
    echo "Output log file does not exist."
fi

if [ -f "log/input.log" ]; then
    echo "Input log file exists."
else
    echo "Input log file does not exist."
fi

if [ -f "log/error.log" ]; then
    echo "Error log file exists."
else
    echo "Error log file does not exist."
fi


echo "------ Creating a test file in the lib directory... and checking EOF (End of File) marker -------"
cat > lib/only_for_testing.txt <<EOF
This is a test file created for testing purposes.
It contains some sample text to demonstrate file creation and manipulation in a script.
You can add more lines or modify the content as needed for your testing scenarios.
EOF

cat lib/only_for_testing.txt

echo "------ Checking for the presence of 'error' in the error log file -------"
cat log/error.log | grep -i "error" | head -n 1
cat log/error.log | grep -i "error" | tail -n 1


echo "Cleaning up... after 10 seconds"
sleep 10
rm -rf "$WORKING_DIR/script_testing"

