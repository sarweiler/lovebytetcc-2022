function TIC()
  cls(8)
  for i=0,40,10 do
    tri(100-i/2,50+i,120,20+i,140+i/2,50+i,7)
  end
  rect(110,90,20,10,1)
  rect(0,100,240,36,12)

  for i=0,56,28 do
    circ(50,50+i,15+i/10,12)
    circb(50,50+i,15+i/10,11)
  end
  circ(45,48,2,0)
  circ(55,48,2,0)
  tri(48,52,50,57,52,52,3)
end
