module MyModule

export x, y

x() = "x"
y() = "y"
p() = "p"

end

module Foo

using MyModule

function run()
  x()
  y()
  p()
end

end
