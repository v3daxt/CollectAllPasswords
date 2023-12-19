# CollectAllPasswords
 
 
This Bash script is designed to consolidate multiple text files with a '.txt' extension located within a specified directory and its subfolders. The script uses the find command to recursively locate all '.txt' files, and the cat command is then used to concatenate their contents into a single output file. The paths to the input folder, output file, and a success message are provided as configurable variables. This script can be useful for combining various wordlists into one comprehensive file, commonly used in security and penetration testing scenarios.

# Usage
```
./collectall.sh -f /home/kali/Desktop/Wordlist/SecLists-master -o /home/kali/Desktop/Wordlist/Combined.txt

    Options:
    -f   Specify the main folder containing wordlists and subfolders."
    -o   Specify the output file name."
    -h   Display this help menu."
}

# Banner
echo -e "\033[1;35m"
echo "    █████████           ████  ████                     █████      █████████   █████       █████         "
echo "  ███░░░░░███         ░░███ ░░███                    ░░███      ███░░░░░███ ░░███       ░░███          "
echo " ███     ░░░   ██████  ░███  ░███   ██████   ██████  ███████   ░███    ░███  ░███        ░███          "
echo "░███          ███░░███ ░███  ░███  ███░░███ ███░░███░░░███░    ░███████████  ░███        ░███          "
echo "░███         ░███ ░███ ░███  ░███ ░███ ░███░███ ░░░   ░███     ░███░░░░░███  ░███        ░███          "
echo "░░███     ███░███ ░███ ░███  ░███ ░███ ░███░███  ███  ░███ ███ ░███    ░███  ░███      █ ░███      █   "
echo " ░░█████████ ░░██████  █████ █████░░██████ ░░██████   ░░█████  █████   █████ ███████████ ███████████   "
echo "  ░░░░░░░░░   ░░░░░░  ░░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░  ░░░░░   ░░░░░ ░░░░░░░░░░░ ░░░░░░░░░░░    "
echo "                                                                                           By v3daxt "
echo -e "\033[0m"
```
