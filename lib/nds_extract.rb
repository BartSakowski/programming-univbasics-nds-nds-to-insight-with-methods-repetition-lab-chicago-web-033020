$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'


#This returns a hash with the director name and their total worldwide gross
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

#This returns the gross for the director in the arguement
def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

# This returns an array of director names
def list_of_directors(source)
row_index = 0
array =[]
while row_index < source.length
  array << source[row_index][:name]
  row_index += 1
end
array
end

def total_gross(source)
total = 0
count = 0
total_array = directors_totals(source).values
  while count < total_array.length do
    total += total_array[count]
    count += 1

  end
  # total = 0
  # row = 0
  # while row < source.length do
  #   count = 0
  #
  #   row += 1
  # end
  # total
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
total
end
