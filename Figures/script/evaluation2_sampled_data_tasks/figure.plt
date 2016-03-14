reset
set term postscript eps enhanced color 30
set output 'evaluation2_data_sampled_tasks.eps'

#set style data histogram
#set style histogram gap 1
set boxwidth 1.5

set xrange [5:65]
set yrange [40:200]

set xlabel "Number of tasks" font ", 28" offset 0,0.5
set ylabel "Number of transmitted packets" font ", 28" offset 1,0
set xtics ("100" 10, "200" 20, "300" 30, "400" 40, "500" 50, "600" 60) font ", 28"
set ytics ("0" 40, "400" 80,"800" 110,"1200" 140,"1600" 170,"2000" 200) font ", 28"

set size square
#set grid
set key top left font ", 25"
#set key box
set key Left
set key reverse

plot 'data.txt' using ($1)-1.8:4 with boxes title 'Random' fill pattern 0 lt 2 lw 1 lc 7, \
	'' using ($1):3 with boxes title 'Prune' fill pattern 2 lt 1 lw 1 lc 10, \
	'' using ($1)+1.8:2 with boxes title 'Combine' fill pattern 7 lt 1 lw 1 lc 1