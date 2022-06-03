defmodule Roman do

  def to(n) when n >= 1000, do: "M" <> to(n-1000)
  def to(n) when n >= 900, do: "CM" <> to(n-900)
  def to(n) when n >= 500, do: "D" <> to(n-500)
  def to(n) when n >= 400, do: "CD" <> to(n-400)
  def to(n) when n >= 100, do: "C" <> to(n-100)
  def to(n) when n >= 90, do: "XC" <> to(n-90)
  def to(n) when n >= 50, do: "L" <> to(n-50)
  def to(n) when n >= 40, do: "XL" <> to(n-40)
  def to(n) when n >= 10, do: "X" <> to(n-10)
  def to(n) when n >= 9, do: "IX" <> to(n-9)
  def to(n) when n >= 5, do: "V" <> to(n-5)
  def to(n) when n >= 4, do: "IV" <> to(n-4)
  def to(n) when n >= 1, do: "I" <> to(n-1)
  def to(0), do: ""

  def from("M" <> rest), do: 1000 + from(rest)
  def from("CM" <> rest), do: 900 + from(rest)
  def from("D" <> rest), do: 500 + from(rest)
  def from("CD" <> rest), do: 400 + from(rest)
  def from("C" <> rest), do: 100 + from(rest)
  def from("XC" <> rest), do: 90 + from(rest)
  def from("L" <> rest), do: 50 + from(rest)
  def from("XL" <> rest), do: 40 + from(rest)
  def from("X" <> rest), do: 10 + from(rest)
  def from("IX" <> rest), do: 9 + from(rest)
  def from("V" <> rest), do: 5 + from(rest)
  def from("IV" <> rest), do: 4 + from(rest)
  def from("I" <> rest), do: 1 + from(rest)
  def from(_), do: 0
end
