s=math.sin
function TIC()
  t=time()/6^4
  for x=0,239 do
    for y=0,135 do
      c=s((x+t*180)/50)-s(y/50)+t
      pix(x,y,x/10*c%4+1)
    end
  end
end