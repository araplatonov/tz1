echo "Copy files from: $1 to $2"
echo "---Files in input dir---"
find $1 -maxdepth 1 -type f -print
echo "---Files in input dir and child dirs---"
find $1 -type f -print
echo "---Dirs in input dir---"
find $1 -type d -print
echo "Clear output folder..."
rm -rf $2
mkdir -p $2
echo "Copy your files"
find $1 -type f -exec bash -c "cp --backup=numbered \"{}\" $2" \;
echo "Success"
