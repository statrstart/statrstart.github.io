BEGIN { 
	i = 0
	print "digraph \"fit\" \{" 
 	print "rankdir=TB;" 
#	print "rankdir=LR;"
 	print "size=\"8,8\";" 
 	print "edge [fontname=\"sans\" ,fontsize=10];" 
#	print "node [shape =ellipse, style = filled,fillcolor = \"gold2\"];充実感;"
#	print "node [shape =triangle,fixedsize = true, width = 0.3, height = 0.3,fontsize=5, style = filled,fillcolor =\" violet\"]切片1 切片2 切片3 切片4 切片5;"
#	print "node [fontname=\"serif\" ,fixedsize = false,fontsize=14, shape=box, style = filled,fillcolor = \"greenyellow\"];"
	print "node [fontname=\"serif\" ,fixedsize = false,fontsize=14, shape=box];"
  	print "center=1;" 
#{rank=min "" "" "" ""}  
#{rank=max "" ""}  
#{rank=same "" ""}  
#"" [shape=ellipse]  
#"" [shape=ellipse]  
/* Paths */
#	 x -> y[dir=forward];
#	 x -> x[dir=back, headport=s, tailport=s];
#	 y -> y[dir=both, headport=s, tailport=s];
}
{
	if($2 == "=~")
		{print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\"" $6}
	if($2 == "~")
		{print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\",dir=\"back\"" $6}
	if($2=="~~")
		{print "\"" $1 "\" ->"  "\"" $3 "\"" $4 "\"" $5 "\",dir=\"both\"" $6}
	if($2 == "~1")
		{i = i + 1  
		 print "\"" $1 "\" ->"  "切片" i    $3 "\"" $4 "\",dir=\"back\"" $5}
}
END {
print "\}"
}


