get:
	# Obtain files
	wget -m --convert-links https://www.princeton.edu/~hos/Mahoney/unixhistory.htm
	wget -m --convert-links http://www.princeton.edu/~hos/frs122/unixhist/

fix-links:
	# Correct HTTPS URLs in the precis pages to transcripts
	# These are also wrong on the web site
	sed -i 's|https://www.princeton.edu/~hos/frs122|../../mike|' www.princeton.edu/~hos/frs122/precis/*.htm

	# Correct HTTPS URLs in the index page to point to local pages
	sed -i 's|https://www.princeton.edu/~hos|..|' 'www.princeton.edu/~hos/Mahoney/unixhistory.htm'
