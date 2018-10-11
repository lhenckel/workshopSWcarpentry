# define variables

# result directory where you will save your results

RESULT_DIR=/drives/C/users/annefou/data-shell/results

# input directory
INPUT_DIR=/drives/C/users/annefou/data-shell/molecules

# do not update anything below

# remove directory
rm -rf $RESULT_DIR

# Create result directory
mkdir $RESULT_DIR

for filename in $INPUT_DIR/*.pdb
  do
    wc -l $filename | sort -n | head -n 1 >> $RESULT_DIR/length.txt
done

cat $RESULT_DIR/length.txt
  
