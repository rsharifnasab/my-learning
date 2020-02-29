IO.puts "welcome to program"
s = fn(age) ->
  IO.puts("in function")

  IO.puts ("in funtion before reutrn ")
  "returning value"
end
c_s = &("returnin in line input :#{&1} and also 1+1 is #{1+1}\n")


db = [
  %{name: "seena", age: 18-1, alive: true},
  %{name: "elixlir", age: 19, alive: true},
  %{name: "steve", age: 78, alive: false},
  %{name: "roozbeh", age: 18, alive: true},
  %{name: "rumi", age: 190, alive: false},
  %{:name => "simple name", :age=> 12 , :alive => true} #testing
]
IO.puts s.(12)
IO.puts c_s.(1111)
hh = hd(db)
IO.puts  hh.name
[one,two,three,fo,fi | others] = db
IO.puts three.name
IO.puts Enum.at(others,0).name

%{name: nna} = hh
IO.puts(nna)
IO.inspect hh
