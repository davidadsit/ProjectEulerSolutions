(1..327).each do |problem|
  if File.exists? "problem#{problem}.rb"
    load "problem#{problem}.rb"
    solver_class_name = "Problem#{problem}"
    solver = Object.const_get(solver_class_name)
    puts "#{problem}: #{solver.Solution}"
#  else
#    puts "#{problem}: no solution found"
  end
end