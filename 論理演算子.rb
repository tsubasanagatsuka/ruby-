# a = -4
# b = -2
# c = 0
# d = 2
# e = 4

a < b true
a > b false
a+b > c+d false
a == -4 && c < d true
a != 0 || b != 0 || c != 0 true
a < 0 || b < c+d || c < 10 true
a < 0 && c == 0 && d != 10 true
(a < -5 || c <= 0) && d >= 0 true
a < -5 || c <= 0 && d >= 0 true
!(a+b < -5) || !(c+d > 5) 
!true          !false 
false             true  
true
