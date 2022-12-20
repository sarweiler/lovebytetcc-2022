t=0
m=math
cls()
for j=0,47 do
  poke(16320+j,255/(1+2^(5-2*j%3-j/8)))
end
function TIC()
  t=t+.01
  x=120+m.sin(t*4.1)*110
  y=68+m.cos(t*1.32)*60
  for i=-3,3 do
    for j=-3,3 do
      c=pix(x+j,y+i)
      pix(x+j,y+i,c==15 and 15 or c+1)
    end
  end
end