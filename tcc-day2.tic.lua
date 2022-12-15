function TIC()
  t=time()/100
  cls(8)
  for i=0,40,10 do
    tri(100-i/2,50+i,120,20+i,140+i/2,50+i,7)
  end
  rect(110,90,20,10,1)
  rect(0,100,240,36,12)
  for i=0,200 do
    pix((i*50+math.sin(t*1.3)*5)%240,(i*13+t*2)%136,12)
  end
end
