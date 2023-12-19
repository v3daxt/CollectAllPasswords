# CollectAllPasswords
 
 
 This Bash script is designed to consolidate multiple text files with a '.txt' extension located within a specified directory and its subfolders. The script uses the find command to recursively locate all '.txt' files, and the cat command is then used to concatenate their contents into a single output file. The paths to the input folder, output file, and a success message are provided as configurable variables. This script can be useful for combining various wordlists into one comprehensive file, commonly used in security and penetration testing scenarios.

# USAGE
```
./collectall.sh -f /home/kali/Desktop/Wordlist/SecLists-master -o /home/kali/Desktop/Wordlist/Combined.txt
```
