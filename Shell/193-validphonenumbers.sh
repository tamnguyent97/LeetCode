#!/bin/bash
# Solution 1
# while read line; do
#     if [[ "$line" =~ ^((\([0-9]{3}\) )|[0-9]{3}-)[0-9]{3}-[0-9]{4}$ ]]; then
#         echo $line
#     fi
# done < text.txt

# Solution 2
# while IFS= read -r line || [ -n "$line" ];
# do 
#     printf '%s\n' "$line" | grep -E '^(\([0-9]{3}\) [0-9]{3}-[0-9]{4})$|^([0-9]{3}-[0-9]{3}-[0-9]{4})$'
#     printf '%s\n' "$line" | sed -n -E '/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/p'
#     printf '%s\n' "$line" | grep -P '^(\(\d{3}\) \d{3}-\d{4})$|^(\d{3}-\d{3}-\d{4})$'
# done < text.txt

# Solution 3
# grep -e "^[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}$" -e "^([0-9]\{3\}) [0-9]\{3\}\-[0-9]\{4\}$" text.txt

# Solution 4
# grep -P '^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$' text.txt