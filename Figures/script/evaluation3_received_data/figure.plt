reset
set term postscript eps enhanced color 30
set output 'evaluation3_received_data.eps'

#set style data histogram
#set style histogram gap 1
set boxwidth 1.5

set xrange [5:65]
set yrange [800:2000]

set xlabel "Number of nodes" font ", 28" offset 0,0.5
set ylabel "Number of received packets" font ", 28" offset 1,0
set xtics ("64" 10,"81" 20, "100" 30, "121" 40, "144" 50, "169" 60) font ", 28"
set ytics ("800" 800, "1100" 1100,"1400" 1400,"1700" 1700,"2000" 2000) font ", 28"

set size square
#set grid
set key left top font ", 25"
#set key box
set key Left
set key reverse

plot 'data.txt' using ($1)-1.9:4 with boxes title 'Random' fill pattern 0 lt 2 lw 1 lc 7, \
	'' using ($1):3 with boxes title 'Prune' fill pattern 2 lt 1 lw 1 lc 10, \
	'' using ($1)+1.9:2 with boxes title 'Combine' fill pattern 7 lt 1 lw 1 lc 1

