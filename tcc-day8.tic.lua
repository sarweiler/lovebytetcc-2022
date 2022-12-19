t=0m=math
s=m.sin
o=m.cos
cls()
function TIC()
  t=t+.04
  for i=0,32639 do
    x=i%240
    y=i//240
    c=pix(x,y)
    pix(x-2,y,c>0 and (c+1)%9 or 0)
  end
  for i=1,20 do
    a=m.pi*s(t/10)*2/20*i+t
    circ(120+o(a)*80,68+s(a)*s(t/10)*50,9+s(t*o(i))*i,4)
  end
end