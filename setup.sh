INSTALLDIR=$(pwd)
echo "Radiation is installed to $INSTALLDIR. If this changes you might want to rerun this script"
USER=$(whoami)
read -p "Enter title for blog:[$USER] " blog_title
if [ "$blog_title" = "" ]
then
    blog_title = $USER
fi
chmod +x bin/runner.rb
sed -i s/~Schlink/$blog_title/ ./lib/templates/blog.html.erb
cd ~
mkdir -p bin
ln -s $INSTALLDIR/bin/runner.rb ~/bin/radiation
