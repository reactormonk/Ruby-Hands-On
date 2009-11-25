# To not overload namespaces
module Iteration
  # {{{ Arrays
  # Add 2 to each element and return the new array.
  def add_2(array)
  end

  # Delete all smaller than 4 and sort it from lowest to highest
  def del_sort(array)
  end

  # Return all odd numbers within the given array
  def odd_numbers(array)
  end

  # Delete every second element from the array (first deleted element is index 1)
  def delete_every_2(array)
  end

  # To be able to call the methods via Iteration.method
  module_function :add_2, :del_sort, :odd_numbers, :delete_every_2
  # }}}
end
