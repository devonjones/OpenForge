#!/bin/bash

: ${OPENSCAD:="openscad"}
mkdir -p intermediate

#$OPENSCAD -o intermediate/right_line_01.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[20, 35, 11, 32, 38, 49, 23, 41, 27]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_02.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[57, 51, 34, 10, 2, 0, 33, 5, 45]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_03.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[61, 7, 60, 37, 1, 36, 24, 19, 29]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_04.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[5, 61, 54, 26, 18, 40, 31, 9, 8]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_05.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[7, 1, 39, 41, 36, 11, 32, 27, 37]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_06.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[53, 34, 43, 2, 4, 33, 28, 50, 14]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_07.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50, 23, 17, 49]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_08.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[3, 13, 55, 33, 58, 53, 63, 6]' \
#  gatehouse_lines.scad
##  -D 'faces=[53, 63, 6, 62, 40, 10, 38, 32, 58, 33, 55, 13, 3]' \
#
#$OPENSCAD -o intermediate/right_line_09.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[59, 0, 36, 57, 31, 24, 51, 35, 56, 43, 1, 7, 9]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_10.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[48, 12, 55, 42, 52, 20, 11, 36, 32, 22, 9, 62, 13]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_line_11.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[4, 19, 41, 39, 21, 1, 29, 46]' \
#  gatehouse_lines.scad
##  -D 'faces=[1, 29, 46, 49, 8, 7, 16, 44, 21, 39, 41, 19, 4]' \
#
#$OPENSCAD -o intermediate/right_line_12.stl \
#  -D 'right=true' -D 'staggered=false' \
#  -D 'faces=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
#  gatehouse_lines.scad


$OPENSCAD -o intermediate/right_staggered_line_01.stl \
  -D 'right=true' -D 'staggered=true' \
  -D 'faces=[42, 4, 25, 59, 22, 52, 0,0,0,0]' \
  gatehouse_lines.scad
#  -D 'faces=[42, 4, 25, 59, 22, 52, 3, 31, 48, 13]' \

#$OPENSCAD -o intermediate/right_staggered_line_02.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[8, 47, 62, 17, 26, 39, 44, 18, 53, 43]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_03.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[46, 9, 21, 40, 58, 50, 12, 14, 54, 28]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_04.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[0, 17, 16, 30, 19, 12, 45, 62, 23, 21]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_05.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[13, 6, 49, 24, 55, 29, 35, 25, 58, 57]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_06.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[63, 59, 56, 3, 52, 60, 38, 1, 22, 20]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_07.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[28, 16, 52,  4, 25, 2, 29, 11, 34, 61, 12, 37, 18]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_08.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21, 0, 5, 46]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_09.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_10.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[59, 24,  0, 27, 14, 5, 54, 45, 56, 1, 37, 43, 40]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_11.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[57, 60, 51, 35, 34, 33, 3, 28, 25, 31, 12, 29, 24]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/right_staggered_line_12.stl \
#  -D 'right=true' -D 'staggered=true' \
#  -D 'faces=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50]' \
#  gatehouse_lines.scad


#$OPENSCAD -o intermediate/left_line_01.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[20, 35, 11, 32, 38, 49, 23, 41, 27]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_02.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[57, 51, 34, 10, 2, 0, 33, 5, 45]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_03.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[61, 7, 60, 37, 1, 36, 24, 19, 29]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_04.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[5, 61, 54, 26, 18, 40, 31, 9, 8]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_05.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[7, 1, 39, 41, 36, 11, 32, 27, 37]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_06.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[53, 34, 43, 2, 4, 33, 28, 50, 14]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_07.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50, 23, 17, 49]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_08.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[3, 13, 55, 33, 58, 53, 63, 6]' \
#  gatehouse_lines.scad
##  -D 'faces=[53, 63, 6, 62, 40, 10, 38, 32, 58, 33, 55, 13, 3]' \
#
#$OPENSCAD -o intermediate/left_line_09.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[59, 0, 36, 57, 31, 24, 51, 35, 56, 43, 1, 7, 9]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_10.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[48, 12, 55, 42, 52, 20, 11, 36, 32, 22, 9, 62, 13]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_line_11.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[4, 19, 41, 39, 21, 1, 29, 46]' \
#  gatehouse_lines.scad
##  -D 'faces=[1, 29, 46, 49, 8, 7, 16, 44, 21, 39, 41, 19, 4]' \
#
#$OPENSCAD -o intermediate/left_line_12.stl \
#  -D 'right=false' -D 'staggered=false' \
#  -D 'faces=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
#  gatehouse_lines.scad


$OPENSCAD -o intermediate/left_staggered_line_01.stl \
  -D 'right=false' -D 'staggered=true' \
  -D 'faces=[42, 4, 25, 59, 22, 52, 0,0,0,0]' \
  gatehouse_lines.scad
#  -D 'faces=[42, 4, 25, 59, 22, 52, 3, 31, 48, 13]' \

#$OPENSCAD -o intermediate/left_staggered_line_02.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[8, 47, 62, 17, 26, 39, 44, 18, 53, 43]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_03.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[46, 9, 21, 40, 58, 50, 12, 14, 54, 28]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_04.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[0, 17, 16, 30, 19, 12, 45, 62, 23, 21]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_05.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[13, 6, 49, 24, 55, 29, 35, 25, 58, 57]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_06.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[63, 59, 56, 3, 52, 60, 38, 1, 22, 20]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_07.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[28, 16, 52,  4, 25, 2, 29, 11, 34, 61, 12, 37, 18]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_08.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21, 0, 5, 46]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_09.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_10.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[59, 24,  0, 27, 14, 5, 54, 45, 56, 1, 37, 43, 40]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_11.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[57, 60, 51, 35, 34, 33, 3, 28, 25, 31, 12, 29, 24]' \
#  gatehouse_lines.scad
#
#$OPENSCAD -o intermediate/left_staggered_line_12.stl \
#  -D 'right=false' -D 'staggered=true' \
#  -D 'faces=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50]' \
#  gatehouse_lines.scad
