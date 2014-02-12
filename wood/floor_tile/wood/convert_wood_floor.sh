#!/bin/bash

for i in {0..9} ; do
	convert wood_floor_h_${i}.png -type Grayscale -brightness-contrast 40x60 -depth 8 gray:wood_floor_h_${i}.raw
	convert wood_floor_v_${i}.png -type Grayscale -brightness-contrast 40x60 -depth 8 gray:wood_floor_v_${i}.raw
done

./convert_wood_floor.rb wood_floor_*.raw
