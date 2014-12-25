Project-Euler-P116
==================

Solution to problem 116 on Project Euler (https://projecteuler.net/problem=116)

This was the 6904th solution submitted to the website.

The algorithm consists of simple combinatorics.  The program finds the new number of tiles in a row
afer some black tiles have been replaced with colored tiles.  Then it calculates x nCr y, where 
x = the new total of tiles after colored tiles have been added, and y = the number of colored tiles
that were added.  This is done for colored tiles of width two (red), three (green), and four (blue).
