angle=0
function rotatey(p)
 return {
  x=p.x*math.sin(angle-11) - p.z*math.sin(angle),
  y=p.y,
  z=4e2+p.x*math.sin(angle) + p.z*math.sin(angle-11)
}
end

function rotatex(p)
 return {
  x=p.x,
  y=p.y*math.sin(angle-11) - p.z*math.sin(angle),
  z=p.y*math.sin(angle) + p.z*math.sin(angle-11)
}
end

function TIC() 
 cls()
 points = {}
 angle=angle+.01
 
 for x=-4,4 do
  for y=-4,4 do
   for z=-4,4 do
    table.insert(points,
     rotatey(
      rotatex(
      {
       x=x*6,
       y=y*6,
       z=math.sin(angle-z)*24
     },
     angle
     ),
      angle
      )
     )
   end
  end
 end

 table.sort(points,function (a,b) return a.z>b.z end)

 for i=1,#points do
  for j=0,2 do
   circ(120+6e2*points[i].x/points[i].z-j/2,68+6e2*points[i].y/points[i].z-j/2,3-j,
       (math.sin(points[i].x/10+angle)-math.sin(points[i].y/50-angle)*10)-j)
  end
 end
 
end