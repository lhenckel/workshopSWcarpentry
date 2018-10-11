# define variables

# result directory wher you will save your results

RESULT_DIR=/drives/C/users/annefou/data-shell/results

INPUT_DIR=/drives/C/users/annefou/data-shell/molecules

rm -rf $RESULT_DIR
mkdir $RESULT_DIR

for filename in $INPUT_DIR/*.pdb
  do
    wc -l $filename | sort -n | head -n 1 >> $RESULT_DIR/length.txt
done

cat $RESULT_DIR/length.txt
  
