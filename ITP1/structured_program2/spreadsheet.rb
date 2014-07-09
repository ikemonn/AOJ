a = $<.drop(1).map{|e| e.split.map(&:to_i)}
a.each{|e| e << e.reduce(:+)}
a = a.transpose
a.each{|e| e << e.reduce(:+)}
a.transpose.map{|e| puts e * " "}
