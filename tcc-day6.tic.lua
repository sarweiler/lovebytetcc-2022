w="Hello lovely people!"
l=#w
t=0
u=239
v=135
s=math.sin
function TIC()
  cls(1)
  t=t+1
  for x=0,u,2 do
    for y=0,v,2 do
      pix(x,y,(s((x~y)/v-t/90)*3+s(y/50+s(t/30)))*2%5)
    end
  end
  for i=1,l do
    p=t%(u+l*19)print(string.sub(w,i,i),i*18-p+u,99+s(i+p/9)*9,12,1,3)
  end
end