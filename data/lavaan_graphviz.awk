BEGIN {
	print "digraph \"fit\" \{" 
 	print "rankdir=TB;" 
 	print "size=\"8,8\";" 
 	print "node [fontname=\"serif\" fontsize=14 shape=box];" 
 	print "edge [fontname=\"sans\" fontsize=10];" 
 	print "center=1;" 
}
{
	if($2 == "=~")
		print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\"" $6
}
{
	if($2 == "~")
		print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\",dir=\"back\"" $6
}
{
	if($2=="~~")
		print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\",dir=\"both\"" $6
}
END {
print "\}"
}


