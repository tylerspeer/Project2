user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
#The function total_files report a total number of files for a given directory.
function total_files {
	find $1 -type f | wc -l
}

tar -czf $output $input
#The function total_directories report a total number of directories for a given directory.
function total_directories {
	find $1 -type d | wc -l
}

tar -czf $output $input 2> /dev/null

echo -n "Files to be included:" 
total_files $input
echo -n "Directories to be included :" 
total_directories $input
        
echo "Backup of $input completed! Details about the output backup file:"
ls -1 $output
