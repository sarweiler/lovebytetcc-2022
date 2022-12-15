t=0
function TIC()
  t=(time()/20000+1)/35
  for x=0,239 do
    for y=0,135 do
      pix(x,y,math.cos(x*y*t/5%2)*16%9)
    end
  end
end