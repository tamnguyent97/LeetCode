# Read from the file file.txt and output the tenth line to stdout.
#!/bin/bash
# Solution 1
# i=0
# while read -r line || [ -n "$line" ]; 
# do 
#     if [ $i -eq "9" ]
#     then
#         echo $line; 
#     fi
#     ((i=i+1))    
# done < file.txt

# # Solution 2
# sed -n '10p' file.txt

# Solution 3
awk 'NR == 10' file.txt
