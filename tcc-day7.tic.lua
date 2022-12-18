t=0
l=50
w=120
h=68
s=math.sin
a=math.atan2
function TIC()t=t+1
  for x=-w,w do
    for y=-h,h do
      z=s(t/99)*h
      W=a(y,z+x)*2.5
      n=((z+x)^2+y^2)^.5+s(W*y/30)*3
      T=399/n+(s(t/l)*l)+s(W*1.5)
      c=(W+t/20)//1~T//1
      pix(w+x,h+y,n>10+s(t/l)*l and c%3+8 or a(x+t&y)*999+t/l)
    end
  end
end