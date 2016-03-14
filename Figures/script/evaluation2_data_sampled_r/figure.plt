reset
set term postscript eps enhanced color 30
set output 'evaluation2_data_sampled_r.eps'

#set style data histogram
#set style histogram gap 1
set boxwidth 1.5

set xrange [5:65]
set yrange [60:360]

set xlabel "r varies from 2 to 7 with k=8" font ", 28" offset 0,0.5
set ylabel "Number of transmitted packets" font ", 28" offset 1,0
set xtics ("2" 10, "3" 20, "4" 30, "5" 40, "6" 50, "7" 60) font ", 28"
set ytics ("600" 60, "1200" 120,"800" 180,"2400" 240,"3000" 300, "3600" 360) font ", 28"

set size square
#set grid 
set key top left font ", 25"
#set key box
set key Left
set key reverse

plot 'data.txt' using ($1)-1.8:4 with boxes title 'Random' fill pattern 0 lt 2 lw 1 lc 7, \
	'' using ($1):3 with boxes title 'Prune' fill pattern 2 lt 1 lw 1 lc 10, \
	'' using ($1)+1.8:2 with boxes title 'Combine' fill pattern 7 lt 1 lw 1 lc 1