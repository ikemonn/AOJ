a, b, c = gets.chomp.split.map(&:to_f)

s = (a * b * Math.sin(c / 180 * Math::PI)) / 2
l = a + b + (Math.sqrt(a**2 + b**2 - 2*a*b*Math.cos(c / 180 * Math::PI)))
h = 2 * s / a
puts sprintf("%.12f", s)
puts sprintf("%.12f", l)
puts sprintf("%.8f", h)
