#!/usr/bin/env ruby


# rewrite matrix 

def number_picker()
  rand(1..9)
end

def matrix_builder()
  # rewrite matrix_builder to take a list and add numbers from that list.. 
  # then check row/collum for duplicates.. if none found put number in slot
  $matrix = []
  81.times do
    $matrix.push(number_picker)
  end
  return $matrix
end

def matrix_initializer(starting_blocks)
  initial_entries = {}
  starting_blocks.times do
    #code that generates starting numbers and their positions on the game board
    #should check that position isn't already filled
    #should check that row/collum doesn't already have that number
    
    
  end
end

def print_matrix()
  cell = 0
  9.times do |x|
    if x % 3 == 0
      print "-" * 13, "\n"
    end
      print_line(cell)
      cell += 9
    
  end
  print "-" * 13, "\n"
end

def print_line(cell)
  3.times do
  print "|"
  
    3.times do
      print "#{$matrix[cell]}"
      cell += 1
    end
  end
  
  print "|\n"
  return cell
end

def main()
  matrix_builder()
  print_matrix()
end

main