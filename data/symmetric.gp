set pointintervalbox 2
set format y "%.1e"
set tics font "Times,10"
set key font "Times,10"
set label font "Times,10"
set xrange [-10:10]

set output "symmetric.eps"
set terminal postscript eps color enhanced "Times" solid

set multiplot layout 2,1 

set ylabel "({/Times-Italic f*g})({/Times-Italic w})"
set key right top 
plot \
"graph-Symmetric-width_10.txt" w lp lc rgb "red" pi -70 lt 6 ps 2 t "W=10",\
"graph-Symmetric-width_20.txt" w lp lc rgb "blue" pi -70 lt 6 ps 2 t "W=20",\
"graph-Symmetric-width_80.txt" w lp lc rgb "green" pi -70 lt 6 ps 2 t "W=40"

set ylabel "{/Symbol D}({/Times-Italic f*g})({/Times-Italic w})"
set key right bottom
plot \
"graph-Symmetric-width_10.txt" u 1:($2-$4) w lp lc rgb "red" pi -70 lt 6 ps 2 t "W=10",\
"graph-Symmetric-width_20.txt" u 1:($2-$4) w lp lc rgb "blue" pi -70 lt 6 ps 2 t "W=20",\
"graph-Symmetric-width_80.txt" u 1:($2-$4) w lp lc rgb "green" pi -70 lt 6 ps 2 t "W=40"

unset multiplot

