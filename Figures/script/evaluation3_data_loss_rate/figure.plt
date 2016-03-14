reset
#set term postscript eps enhanced monochrome 25 （可以用来生成黑白色图像）

set terminal postscript eps enhanced color 30
set output "evaluation3_data_loss_rate.eps"

set xrange [1:6]
set yrange [0:60]

set xtics("64" 1,"81" 2, "100" 3,"121" 4, "144" 5, "169" 6) font ", 28"
set ytics("0" 0, "0.1" 10, "0.2" 20, "0.3" 30, "0.4" 40,"0.5" 50,"0.6" 60 ) font ", 28"

set xlabel "Number of nodes" font ", 28" offset 0,0.5
set ylabel "Data loss rate" font ", 28"  offset 1.5,0


#set grid
set key left top font ", 25"
#set key box
set size square
set key Left
set key reverse

#ls表示lines style; lt表示line type; pt表示point type; lc表示line color; lw表示line width; ps表示point size
plot "data.txt" using 1:2 title "Random" with linespoints lw 1 pt 4 lc 7 ps 3, '' using 1:3 title "Prune" with linespoints lw 1 pt 6 lc 10 ps 3, '' using 1:4 title "Combine" with linespoints lw 1 pt 8 lc 1 ps 3