#!/bin/bash

: ${OPENSCAD:="openscad"}
mkdir -p intermediate

######
# 1x #
######

$OPENSCAD -o intermediate/1x_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[9, 42]' \
  -D 'back=[49, 62]' \
  -D 'sides=[43, 27]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[31, 17]' \
  -D 'back=[5, 30]' \
  -D 'sides=[60, 52]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[3, 51]' \
  -D 'back=[55, 41]' \
  -D 'sides=[2, 1]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
  -D 'front=[3, 51]' \
  -D 'back=[55, 41]' \
  -D 'sides=[2, 1]' \
  -D 'top=[59, 21]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_staggered_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[41, 12, 37]' \
  -D 'back=[13, 1, 46]' \
  -D 'sides=[34, 4]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_staggered_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[57, 23, 27]' \
  -D 'back=[20, 7, 50]' \
  -D 'sides=[6, 49]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_staggered_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[4, 39, 58]' \
  -D 'back=[17, 19, 27]' \
  -D 'sides=[1, 63]' \
  1x_diagonal_lines.scad

$OPENSCAD -o intermediate/1x_staggered_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
  -D 'front=[4, 39, 58]' \
  -D 'back=[17, 19, 27]' \
  -D 'sides=[1, 63]' \
  -D 'top=[56, 28, 47]' \
  1x_diagonal_lines.scad

######
# 2x #
######

$OPENSCAD -o intermediate/2x_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[46, 49, 3, 31, 21, 53]' \
  -D 'back=[17, 61, 12, 33, 29, 50]' \
  -D 'sides=[55, 34]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[32, 4, 42, 60, 27, 59]' \
  -D 'back=[0, 55, 46, 24, 35, 45]' \
  -D 'sides=[58, 44]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[45, 0, 44, 35, 41, 57]' \
  -D 'back=[5, 37, 51, 63, 36, 4]' \
  -D 'sides=[40, 29]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
  -D 'front=[45, 0, 44, 35, 41, 57]' \
  -D 'back=[5, 37, 51, 63, 36, 4]' \
  -D 'sides=[40, 29]' \
  -D 'top=[19, 53, 25, 38]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_staggered_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[52, 58, 8, 11, 23, 34]' \
  -D 'back=[32, 19, 18, 60, 62, 7]' \
  -D 'sides=[61, 11]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_staggered_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[50, 7, 36, 17, 6, 25]' \
  -D 'back=[21, 57, 31, 59, 2, 40]' \
  -D 'sides=[30, 22]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_staggered_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[24, 55, 26, 1, 38, 33]' \
  -D 'back=[27, 53, 6, 34, 23, 28]' \
  -D 'sides=[23, 12]' \
  2x_diagonal_lines.scad

$OPENSCAD -o intermediate/2x_staggered_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
  -D 'front=[24, 55, 26, 1, 38, 33]' \
  -D 'back=[27, 53, 6, 34, 23, 28]' \
  -D 'sides=[23, 12]' \
  -D 'top=[2, 1, 7, 37]' \
  2x_diagonal_lines.scad

######
# 3x #
######

$OPENSCAD -o intermediate/3x_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[20, 35, 11, 32, 38, 49, 23, 41, 27]' \
  -D 'back=[5, 61, 54, 26, 18, 40, 31, 9, 8]' \
  -D 'sides=[25, 7]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[57, 51, 34, 10, 2, 0, 33, 5, 45]' \
  -D 'back=[7, 1, 39, 41, 36, 11, 32, 27, 37]' \
  -D 'sides=[58, 18]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[61, 7, 60, 37, 1, 36, 24, 19, 29]' \
  -D 'back=[53, 34, 43, 2, 4, 33, 28, 50, 14]' \
  -D 'sides=[12, 38]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
  -D 'front=[61, 7, 60, 37, 1, 36, 24, 19, 29]' \
  -D 'back=[53, 34, 43, 2, 4, 33, 28, 50, 14]' \
  -D 'sides=[12, 38]' \
  -D 'top=[37, 63, 21, 30, 24, 8, 13]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_staggered_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[42, 4, 25, 59, 22, 52, 3, 31, 48, 13]' \
  -D 'back=[0, 17, 16, 30, 19, 12, 45, 62, 23, 21]' \
  -D 'sides=[20, 60]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_staggered_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[8, 47, 62, 17, 26, 39, 44, 18, 53, 43]' \
  -D 'back=[13, 6, 49, 24, 55, 29, 35, 25, 58, 57]' \
  -D 'sides=[28, 44]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_staggered_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[46, 9, 21, 40, 58, 50, 12, 14, 54, 28]' \
  -D 'back=[63, 59, 56, 3, 52, 60, 38, 1, 22, 20]' \
  -D 'sides=[17, 61]' \
  3x_diagonal_lines.scad

$OPENSCAD -o intermediate/3x_staggered_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
  -D 'front=[46, 9, 21, 40, 58, 50, 12, 14, 54, 28]' \
  -D 'back=[63, 59, 56, 3, 52, 60, 38, 1, 22, 20]' \
  -D 'sides=[17, 61]' \
  -D 'top=[32, 27, 9, 36, 35, 57, 34, 48]' \
  3x_diagonal_lines.scad

######
# 4x #
######

$OPENSCAD -o intermediate/4x_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[39, 30, 41, 18, 60, 19, 45, 44, 54, 50, 23, 17, 49]' \
  -D 'back=[48, 12, 55, 42, 52, 20, 11, 36, 32, 22, 9, 62, 13]' \
  -D 'sides=[59, 34]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[53, 63, 6, 62, 40, 10, 38, 32, 58, 33, 55, 13, 3]' \
  -D 'back=[1, 29, 46, 49, 8, 7, 16, 44, 21, 39, 41, 19, 4]' \
  -D 'sides=[30, 11]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=false' \
  -D 'front=[59, 0, 36, 57, 31, 24, 51, 35, 56, 43, 1, 7, 9]' \
  -D 'back=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
  -D 'sides=[42, 45]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=false' -D 'render_top=true' \
  -D 'front=[59, 0, 36, 57, 31, 24, 51, 35, 56, 43, 1, 7, 9]' \
  -D 'back=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
  -D 'sides=[42, 45]' \
  -D 'top=[19, 37, 16, 58, 28, 63, 1, 13, 46, 18, 26]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_staggered_diagonal_line_1.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[28, 16, 52,  4, 25, 2, 29, 11, 34, 61, 12, 37, 18]' \
  -D 'back=[59, 24,  0, 27, 14, 5, 54, 45, 56, 1, 37, 43, 40]' \
  -D 'sides=[9, 36]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_staggered_diagonal_line_2.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[20, 12, 37, 14, 42, 26, 22, 53, 60, 21, 0, 5, 46]' \
  -D 'back=[57, 60, 51, 35, 34, 33, 3, 28, 25, 31, 12, 29, 24]' \
  -D 'sides=[29, 23]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_staggered_diagonal_line_3.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=false' \
  -D 'front=[27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2]' \
  -D 'back=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50]' \
  -D 'sides=[22, 49]' \
  4x_diagonal_lines.scad

$OPENSCAD -o intermediate/4x_staggered_diagonal_line_top.stl \
  -D 'rend=true' -D 'random=false' -D 'staggered=true' -D 'render_top=true' \
  -D 'front=[27, 8, 3, 56, 44, 59, 39, 63, 18, 31, 6, 18, 2]' \
  -D 'back=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50]' \
  -D 'sides=[22, 49]' \
  -D 'top=[31, 38, 0, 24, 17, 20, 5, 57, 25, 35, 61]' \
  4x_diagonal_lines.scad

