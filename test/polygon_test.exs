defmodule PolygonTest do
  use ExUnit.Case
  doctest GeoPolygons.Polygon

  alias GeoPolygons.Point
  alias GeoPolygons.Polygon

  @bad_poly_degen_empty []
  @bad_poly_degen_one [%Point{}]
  @bad_poly_degen_two [%Point{}, %Point{lat: 35, long: -83}]
  @bad_poly_degen_dup [%Point{}, %Point{}, %Point{lat: 35, long: -83}]
  @bad_poly_lat_stack [%Point{lat: 35}, %Point{lat: 35, long: -83}, %Point{lat: 35, long: -85}]
  @bad_poly_alt_stack [%Point{}, %Point{alt: 100}, %Point{alt: 200}]
  @bad_poly_intersect [
    %Point{lat: 35, long: -83},
    %Point{lat: 35, long: -80},
    %Point{lat: 30, long: -83},
    %Point{lat: 30, long: -80}
  ]
  @bad_poly_repeat [
    %Point{lat: 35, long: -83},
    %Point{lat: 35, long: -80},
    %Point{lat: 32, long: -82},
    %Point{lat: 30, long: -83},
    %Point{lat: 30, long: -80},
    %Point{lat: 32, long: -82}
  ]

  @good_poly_alt [%Point{}, %Point{alt: 100}, %Point{lat: 35, long: -83}]

  test "empty poly is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_degen_empty) == false
  end

  test "poly with one point is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_degen_one) == false
  end

  test "poly with two points is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_degen_two) == false
  end

  test "poly with no more than one unique point is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_degen_dup) == false
  end

  test "poly with three collinear latitudes is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_lat_stack) == false
  end

  test "poly with three collinear altitudes is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_alt_stack) == false
  end

  test "poly with vertical line is valid" do
    assert Polygon.valid_polygon?(@good_poly_alt) == true
  end

  test "poly with intersecting edges is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_intersect) == false
  end

  test "poly with repeated points is invalid" do
    assert Polygon.valid_polygon?(@bad_poly_repeat) == false
  end
end

