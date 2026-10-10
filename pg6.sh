
#!/bin/bash

echo "===== MENU-DRIVEN LINUX COMMANDS ====="
echo "1. Remove a file"
echo "2. Perform a calculation"
echo "3. Display unique lines in a file"
echo "4. Display the last 10 lines of a file"
echo "5. Compare two files"
echo "Enter your choice (1-5):"
read ch

case $ch in
1)
    echo "Enter the filename to remove:"
    read f
    rm "$f"
    ;;
2)
    echo "Enter a mathematical expression (e.g., 5+3):"
    read e
    echo "$e" | bc
    ;;
3)
    echo "Enter the filename to display unique lines from:"
    read f
    uniq "$f"
    ;;
4)
    echo "Enter the filename to display the last 10 lines of:"
    read f
    tail "$f"
    ;;
5)
    echo "Enter the first filename:"
    read f1
    echo "Enter the second filename:"
    read f2
    cmp "$f1" "$f2"
    ;;
*)
    echo "Invalid choice! Please enter a number from 1 to 5."
    ;;
esac
