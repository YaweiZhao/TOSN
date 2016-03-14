reset
set term postscript eps enhanced color 30
set output 'evaluation2_optimal1.eps'

#set style data histogram
#set style histogram gap 1
set boxwidth 1.5

set xrange [0:60]
set yrange [0:51]

set xlabel "Interval length / window size" font ", 28" offset 0,0.5
set ylabel "Number of transmitted packets" font ", 28" offset 1,0
set xtics ("1/4" 10,"1/2" 30, "3/4" 50) font ", 28"
set ytics ("0" 0, "10" 10,"20" 20,"30" 30,"40" 40,"50" 50) font ", 28"

set size square
#set grid
set key top left font ", 25"
#set key box
set key Left
set key reverse

plot 'data.txt' using ($1)-1.9:5 with boxes title 'Random' fill pattern 0 lt 2 lw 1 lc 7, \
	'' using ($1):4 with boxes title 'Prune' fill pattern 2 lt 1 lw 1 lc 10, \
	'' using ($1)+1.9:3 with boxes title 'Combine' fill pattern 7 lt 1 lw 1 lc 1, \
	'' using ($1)+3.8:2 with boxes title 'Optimal' fill pattern 6 lt 1 lw 1 lc 3