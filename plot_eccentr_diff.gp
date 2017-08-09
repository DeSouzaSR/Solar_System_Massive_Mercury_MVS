#!/usr/bin/env gnuplot

# Create directory plots
system ( "[ -d plots ] || mkdir plots" )

# Define directories
ss_norm="../Solar_System_Today_MVS"

# Plot files from planets data
set terminal pdfcairo
set xlabel "Time [yr]"
set ylabel "Eccentricity"
set key outside

set output "plots/eccentricity_mercury_diff.pdf"
plot ss_norm."/data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/mercury.txt" u 1:3 w l title "Massive Mercury" 

set output "plots/eccentricity_mercury_diff_1e6.pdf"
set xrange [0:1e6]
plot ss_norm."/data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/mercury.txt" u 1:3 w l title "Massive Mercury" 

set output "plots/eccentricity_mercury_diff_4e6.pdf"
set xrange [0:4e6]
plot ss_norm."/data_planets/mercury.txt" u 1:3 w l title "Mercury",\
     "data_planets/mercury.txt" u 1:3 w l title "Massive Mercury" 

set output "plots/eccentricity_venus_diff_1e6.pdf"
set xrange [0:1e6]
plot ss_norm."/data_planets/venus.txt" u 1:3 w l title "Venus",\
     "data_planets/venus.txt" u 1:3 w l title "VMM" 

set output "plots/eccentricity_venus_diff_4e6.pdf"
set xrange [0:4e6]
plot ss_norm."/data_planets/venus.txt" u 1:3 w l title "Venus",\
     "data_planets/venus.txt" u 1:3 w l title "VMM" 

set output "plots/eccentricity_jupiter_diff_1e6.pdf"
set xrange [0:1e6]
plot ss_norm."/data_planets/jupiter.txt" u 1:3 w l title "Jupiter",\
     "data_planets/jupiter.txt" u 1:3 w l title "JMM" 

set output "plots/eccentricity_jupiter_diff_4e6.pdf"
set xrange [0:4e6]
plot ss_norm."/data_planets/jupiter.txt" u 1:3 w l title "Jupiter",\
     "data_planets/jupiter.txt" u 1:3 w l title "JMM" 
