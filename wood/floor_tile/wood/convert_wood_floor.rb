#!/usr/bin/env ruby
def raw2dat(filename)
  width = 160 # => width of resized raw image
  str = File.binread(filename)
  pixels = str.unpack("C*")

  File.open(filename.slice(0, filename.length - 3) + 'dat', 'w') do |f|
    pixels.each_with_index do |pixel, idx|
      f.write(pixel)
      if ((idx + 1) % width) == 0
        f.write("\n")
      else
        f.write(" ")
      end
    end
    f.write("\n")
  end
end

ARGV.each do|a|
  raw2dat(a)
end
