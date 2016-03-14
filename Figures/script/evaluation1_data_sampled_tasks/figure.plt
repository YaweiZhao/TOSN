reset
set term postscript eps enhanced color 30
set output 'evaluation1_data_sampled_tasks.eps'

#set style data histogram
#set style histogram gap 1
set boxwidth 1.5

set xrange [6:54]
set yrange [25:50]

set xlabel "Number of tasks" font ", 28" offset 0,+0.5
set ylabel "Number of transmitted packets" font ", 28" offset +1,0
set xtics ("10" 10, "20" 20, "30" 30, "40" 40, "50" 50)  font ", 28"
set ytics ("25" 25,"30" 30,"35" 35,"40" 40,"45" 45, "50" 50)  font ", 28"

set size square
#set grid
set key top left font ", 25"
#set key box
set key Left
set key reverse

plot 'data.txt' using ($1)-1.8:2 with boxes title 'GA' fill pattern 0 lt 2 lw 1 lc 7, \
	'' using ($1):3 with boxes title 'Overlap' fill pattern 2 lt 1 lw 1 lc 10, \
	'' using ($1)+1.8:4 with boxes title 'DP' fill pattern 7 lt 1 lw 1 lc 1