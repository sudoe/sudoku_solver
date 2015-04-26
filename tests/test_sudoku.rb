#!/usr/bin/env ruby

require "./sudoku.rb"
require 'minitest/autorun'

class TestSudoku < MiniTest::Test
  
  def setup()
    $matrix = matrix_builder
    
  end
    
  def test_sample
    assert_equal( 4, 2 + 2 )
  end
    
  def test_random_number_generator()
    refute_equal(10, number_picker())
  end

  def test_matrix_is_81_fields_long
    assert($matrix.length == 81)
  end
  
  def test_rows_for_duplicate_numbers()
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], $matrix[0..8].sort)
  end
  
  def test_collums_for_duplicate_numbers()
    @collum = []
    row = 0
    9.times do
      @collum.push($matrix[0 + row])
      row += 9
    end
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], @collum.sort)
  end
  
end