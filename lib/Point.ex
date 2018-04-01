defmodule Point do
  @moduledoc """
  Point struct and operations on Points
  """
  defstruct lat: 45.0, long: 90.0, alt: 0

  @type point :: %Point{}

  @spec dist_2d(point, point, :atom) :: float
  @doc """
  Gives the distance along a flat approximation of the earth's surface between two points.
  (Not implemented)

  ### Examples

    iex> a = %Point{ lat: 35.760283, long: -83.561089 }
    iex> b = %Point{ lat: 35.763479, long: -83.539407 }
    iex> Point.dist_2d(a, b, :kilometers)
    2.02
  """
  def dist_2d(a, b, unit) do
  end

  @spec dist_3d(point, point, :atom) :: float
  @doc """
  Gives the straight line distance between two points.
  (Not implemented)

  ### Examples

    iex> a = %Point{ lat: 35.760283, long: -83.561089, alt: 0 }
    iex> b = %Point{ lat: 35.763479, long: -83.539407, alt: 1000 }
    iex> Point.dist_3d(a, b, :kilometers)
    2.25
  """
  def dist_3d(a, b, unit) do
  end

  @spec dist_gc(point, point, :atom) :: float
  @doc """
  Gives the length of great circle arc between two sea-level points
  (Not implemented)

  ### Examples

    iex> a = %Point{ lat: 35.760283, long: -83.561089 }
    iex> b = %Point{ lat: 35.763479, long: -83.539407 }
    iex> Point.dist_gc(a, b, :kilometers)
    2.25
  """
  def dist_gc(a, b, unit) do
  end
end
