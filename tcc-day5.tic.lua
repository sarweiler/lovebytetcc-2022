m=math
s=m.sin
function TIC()
  t=(time()/100)+100
  for y=-90,90 do
    for x=-140,140 do
      A=(m.atan2(y,x))*2.5
      d=(x^2+y^2+1)^0.5
      D=t+s(A*t*5)+(999/d)
      c=d>t/10 and (A+(D/2)%5)%13+1 or s((x-t//1)~y)*1.1+6*t/100
      pix(s(t/8)*20+x+120,s(t/7)*15+y+68,c)
    end
  end
end