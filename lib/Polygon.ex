defmodule GeoPolygons.Polygon do
  @moduledoc """
  Polygon struct and operations on Polygons
  """

  alias GeoPolygons.Point

  @type polygon :: list(Point.point)

  @spec valid_polygon?(polygon) :: boolean
  @doc """
  Returns true if
    - Polygon is non-intersecting
    - Polygon is "open" (no repetition of points)
    - Polygon is non-degenerate (three or more points)
  Returns false otherwise. (Not implemented)
  """
  def valid_polygon?(poly) do
    length(poly) > 2
  end

  @spec area_2d(polygon, atom) :: float
  @doc """
  Returns the area of the flat approximation of the polygon in the given unit. (Not implemented)
  """
  def area_2d(poly, unit) do
  end

  @spec area_sph(polygon, atom) :: float
  @doc """
  Returns the spherical area of the polygon, flattening the points to their average altitude.
  http://math.rice.edu/~pcmi/sphere/gos4.html
  (Not implemented)
  """
  def area_sph(poly, unit) do
  end

  @spec join(polygon, polygon) :: {atom, polygon}
  @doc """
  If two polygons have a single collection of contiguous edges in common, returns `{:ok, new_poly}`
  where `new_poly` is the result of joining the two polygons along that collection of edges.
  Returns `{:error, %Polygon{coordinates: []}` otherwise. (Not implemented)
  """
  def join(poly1, poly2) do
  end

  @spec split(polygon, atom) :: list(polygon)
  @doc """
  Given a polygon, returns a pair of polygons created by splitting the polygon according to the
  given strategy. (Not implemented)
  """
  def split(poly, strategy) do
  end

end
