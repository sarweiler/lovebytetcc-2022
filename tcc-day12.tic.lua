t=0
rndy={}
for i=1,10 do
    table.insert(rndy,i*20)
end

function pres(x,y,w,h,c)
  l={}
  for i=0,3 do
  s=1.57*i+t
   table.insert(l,{
      x=x+math.sin(s-11)*w,
      y=y+math.sin(s)*4
    })
  end
  for i=0,1 do
    for j=1,3 do
      line(l[j].x,l[j].y-i*h,
           l[j+1].x,l[j+1].y-i*h,c)
    end
    line(l[4].x,l[4].y-i*h,
              l[1].x,l[1].y-i*h,c)
  end
  for i=1,4 do
    line(l[i].x,l[i].y,
              l[i].x,l[i].y-h,c)
  end
end

function TIC()
  cls()
  t=t+.01
  
  for i=1,10 do
    pres(math.sin(rndy[i]+t)*230,(-rndy[i]+t*100)%160,20-rndy[i]/20,20-rndy[i]/20,rndy[i]%19)
  end
  
  for h=0,5 do
    for i=0,7 do
      s=0.79*i+math.sin(t)*10
      for j=0,3 do
       x=120+math.sin(s-11)*(30-h*5)
        y=110+math.sin(s)*6-h*15
        circb(
         x-j,
         y-j+h*math.sin(t*20)*3,
         8-h-j*2,
          (math.sin(x/10+t)-math.sin(y/50-t)*10)-j
        )
      end
    end
  end
  
end