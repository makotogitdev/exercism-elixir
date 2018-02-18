defmodule Squares do
  @moduledoc """
  Calculate sum of squares, square of sums, difference between two sums from 1 to a given end number.
  """

  @doc """
  Calculate sum of squares from 1 to a given end number by using the following
  Gauss's formula (n(n+1)(2n+1))/6
  """
  @spec sum_of_squares(pos_integer) :: pos_integer
  def sum_of_squares(number) do
    (number * (number + 1) * (2 * number + 1)) / 6
  end

  @doc """
  Calculate square of sums from 1 to a given end number by by getting sum of one to upper
  limit first and then get the squared value
  """
  @spec square_of_sums(pos_integer) :: pos_integer
  def square_of_sums(number) do
    sum_to_limit = ((number * (number + 1)) / 2 )
    :math.pow(sum_to_limit, 2)
  end

  @doc """
  Calculate difference between sum of squares and square of sums from 1 to a given end number.
  """
  @spec difference(pos_integer) :: pos_integer
  def difference(number) do
    abs(sum_of_squares(number) - square_of_sums(number))
  end

end