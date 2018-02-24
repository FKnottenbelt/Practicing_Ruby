# is_this_a_triangle.rb 7 kyu

# Implement a method that accepts 3 integer values a, b, c. The
# method should return true if a triangle can be built with the
# sides of given length and false in any other case.

# (In this case, all triangles must have surface greater than 0
# to be accepted).


def isTriangle(a,b,c)
   if a + b > c
     if b + c > a
       if c + a > b
         return true
       end
     end
   end
   false
end

p isTriangle(1,2,3) == false
p isTriangle(1,3,2) == false
p isTriangle(3,1,2) == false

p isTriangle(4,2,3) == true
p isTriangle(5,1,5) == true
p isTriangle(2,2,2) == true

#top solutions
def isTriangle(a,b,c)
   a, b, c = [a, b, c].sort
   a + b > c
end

def isTriangle(a,b,c)
   a + b > c && a + c > b && c + b > a
end