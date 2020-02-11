#!/bin/bash

# Author Github:   https://github.com/g666gle
# Author Twitter:  https://twitter.com/g666g1e
# Date: 12/1/2019
# Usage: ./Import
# Usage: ./Import <Full path to export data to> (imports from normal ./PutYourDatabasesHere/)
# Description:	Import.sh first checks to make sure the user is in the correct directory.
#		Then, every file in the data directory will have their hash compared to the
#		log file keeping track of all of the databases previously imported. If the 
#		database has not been previously imported, the folder is primed, 
#		lastly the pysort.py file is called. 

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'  # No Color

echo
echo "Script description : ";
echo "		Download a DB, with the format \"john.doe@domain.fr:password\"";
echo "		Put it into the 'PutYourDataBasesHere' folder";
echo "		Passwords are written into ~/security/projects/data_breach/wordlists/big_list_sorted";
echo
printf "${RED}[*]${NC} Starting at $(date)\n"

#Checks to see if the user is working out of the BaseQuery directory
if [ "${PWD##*/}" == "BaseQuery" ];then
	#  Checks to see if the Import directory is there
	if [ -d ./PutYourDataBasesHere ];then
		dataDir="$(pwd)"

		let i=0  # used to count the amount of files not already imported 
		declare -a arr
		while read -r inputfile;do
			arr=(${inputfile})
			file_SHA_sum="$(sha256sum "$dataDir"/PutYourDataBasesHere/"$inputfile" | awk '{print$1}')"
			#  check to see if the database has already been imported
			if [ "$(rg $file_SHA_sum -c ./Logs/importedDBS_paswd.log)" == "" ];then
				let i=i+1
			fi
			_constr+="${arr[2]}"
		done< <(find PutYourDataBasesHere -type f -exec echo {} \; | cut -f 2- -d "/")

		# if there are files that need to be imported
		if [ $i -ne 0 ];then

			if [ $# -eq 1 ];then
				checked_dir="$1"
				# If the last char is a "/", get rid of it
				if [ "${checked_dir: -1}" == "/" ]; then 
					# Delete the "/" and re-assign
					checked_dir="${checked_dir%?}"
				fi
			fi


			#echo "$inputfile"
			#  Read each file in the input files, in sorted order
			find PutYourDataBasesHere -type f -exec echo {} \; | cut -f 2- -d "/" | while read -r inputfile;do
				file_SHA_sum="$(sha256sum "$dataDir"/PutYourDataBasesHere/"$inputfile" | awk '{print$1}')"
				#  check to see if the database has already been imported
				if [ "$(rg $file_SHA_sum -c ./Logs/importedDBS_paswd.log)" == "" ];then
					#while IFS= read -r line
					#do
					line=$(head -1 "$dataDir"/PutYourDataBasesHere/"$inputfile")
						if [[ "$line" == *":"* ]];then
							echo "Right format : the first line contains the ':' delimiter"		
							echo "Writing passwords"
							cut -d ":" -f2 "$dataDir"/PutYourDataBasesHere/"$inputfile" >> ~/security/projects/data_breach/wordlists/big_list_sorted
						else 
							echo "Not the right format: the first line doesn't contain the ':' delimiter. Apply sed command to your file if you have a ';' delimiter"
						fi
					#done < head -1 "$dataDir"/PutYourDataBasesHere/"$inputfile"}

					printf "${YELLOW}[!] Adding $inputfile to importedDBS_paswd.log${NC}\n"
					echo "$file_SHA_sum" "$(date)" "$inputfile" >> ./Logs/importedDBS_paswd.log
					echo
				else
					printf "${YELLOW}[!]${NC} $inputfile SHASUM already found in importedDBS_paswd.log\n\n"
					printf "[!] $inputfile SHASUM already found in importedDBS.log\n" >> ./Logs/ActivityLogs.log
				fi

			done
		
			echo "Sort & Uniq step"
			echo	
			sort -u ~/security/projects/data_breach/wordlists/big_list_sorted > ~/security/projects/data_breach/wordlists/big_list_new
			mv -f ~/security/projects/data_breach/wordlists/big_list_new ~/security/projects/data_breach/wordlists/big_list_sorted
			echo "Finished"	

		else # No new files found 
			echo
			printf "${RED}ERROR:${NC} No new files found in the 'PutYourDataBasesHere' directory \n"
			printf "ERROR: No new files found in the 'PutYourDataBasesHere' directory \n" >> ./Logs/ActivityLogs.log
			
		fi # check for imported files

	else    #  If the Import directory doesn't exist
		dataDir=$(pwd)
		printf "${RED}ERROR: Please make a directory called 'PutYourDataBasesHere' in $dataDir${NC}\n"
		printf "ERROR: Please make a directory called 'PutYourDataBasesHere' in $dataDir\n" >> ./Logs/ActivityLogs.log
	fi
else
	# If the users working directory is not BaseQuery while trying to run the script
	printf "${RED}ERROR: Please change directories to the BaseQuery root directory${NC}\n"
	printf "ERROR: Please change directories to the BaseQuery root directory\n" >> ./Logs/ActivityLogs.log
fi

echo
printf "${RED}[*]${NC} Completed\n"
printf "[*] Completed\n" >> ./Logs/ActivityLogs.log




