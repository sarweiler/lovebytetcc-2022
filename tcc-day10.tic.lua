function TIC()
  t=(time()/2e2)%40
  for x=-120,120 do
    for y=-68,68 do
     if t<20 then
       c=(math.sin((x+120)/100+math.sin(t/10))*10)*30
       +math.sin((y/30-t/20)-11)*math.atan(y*math.sin(t/10)+math.sin(x/10)*math.sin(t-11)*5)*20
       pix(120+x,68+y,(c+t)%9)
     else
       A=math.atan2(y/2e2,x/100)*2+t
       D=math.sin(A*t*10)+3e2/(x^2+y^2)^0.5
       pix(120+x,68+y,(A+D)%5)
     end
   end
 end
 if t>=20 then
  for i=0,3 do
    p=1.5718*i
    circ(120+math.sin(t+p)*math.sin(t/4)*40,70+math.sin(t-11+p)*math.sin(t/4)*9,10,0)
  end
end
end