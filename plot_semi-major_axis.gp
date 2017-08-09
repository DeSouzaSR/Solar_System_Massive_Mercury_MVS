#!/usr/bin/env gnuplot

# Create directory plots
system ( "[ -d plots ] || mkdir plots" )

# Plot files from planets data
set terminal pdfcairo
set xlabel "Time [yr]"
set ylabel "Semi-major Axis [au]"
set key outside
set xrange[0:1e6]

set output "plots/semi-major_axis_terrestrial_1e6.pdf"
plot "data_planets/mercury.txt" u 1:2 w l title "Mercury",\
                            ""  u 1:8 w l notitle lt -1,\
                            ""  u 1:9 w l notitle lt -1,\
     "data_planets/venus.txt" u 1:2 w l title "Venus",\
                           "" u 1:8 w l notitle lt -1,\
                           "" u 1:9 w l notitle lt -1,\
     "data_planets/earth.txt" u 1:2 w l title "Earth",\
                           "" u 1:8 w l notitle lt -1,\
                           "" u 1:9 w l notitle lt -1,\
     "data_planets/mars.txt" u 1:2 w l title "Mars",\
                          "" u 1:8 w l notitle lt -1,\
                          "" u 1:9 w l notitle lt -1

set xrange[0:1e8]
set output "plots/semi-major_axis_terrestrial_1e8.pdf"
plot "data_planets/mercury.txt" u 1:2 w l title "Mercury",\
                            ""  u 1:8 w l notitle lt -1,\
                            ""  u 1:9 w l notitle lt -1,\
     "data_planets/venus.txt" u 1:2 w l title "Venus",\
                           "" u 1:8 w l notitle lt -1,\
                           "" u 1:9 w l notitle lt -1,\
     "data_planets/earth.txt" u 1:2 w l title "Earth",\
                           "" u 1:8 w l notitle lt -1,\
                           "" u 1:9 w l notitle lt -1,\
     "data_planets/mars.txt" u 1:2 w l title "Mars",\
                          "" u 1:8 w l notitle lt -1,\
                          "" u 1:9 w l notitle lt -1
