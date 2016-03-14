reset

set terminal postscript eps enhanced color 30
set output "evaluation1_data_loss_rate.eps"

set xrange [10:50]
set yrange [1000:5000]

set xtics("10" 10,"20" 20, "30" 30,"40" 40, "50" 50) font ", 28"
set ytics("0.10" 1000, "0.15" 2000, "0.20" 3000, "0.25" 4000, "0.30" 5000) font ", 28"

set xlabel "Number of tasks" font ", 28" offset 0,0.5
set ylabel "Data loss rate"  font ", 28" offset 1.5,0


#set grid

set key left top font ", 25"
#set key box
set key Left
set key reverse

set size square

#ls表示lines style; lt表示line type; pt表示point type; lc表示line color; lw表示line width; ps表示point size
plot "data.txt" using 1:2 title "GA" with linespoints lw 1 pt 4 lc 7 ps 3, '' using 1:3 title "Overlap" with linespoints lw 1 pt 6 lc 10 ps 3