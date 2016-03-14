circleA = new Layer
	backgroundColor: "#00A967",
	width: 30, height: 30,
	scale: 1, borderRadius: 50
	
circleB = new Layer
	backgroundColor: "#222A38",
	width: 30, height: 30,
	scale: 1, borderRadius: 50
	
circleA.center()
circleB.center()
circleA.x -= 20
circleB.x += 20
circleA.z = 1
circleB.z = 2

animCircleAIn = new Animation
	layer: circleA
	properties: 
		x: circleA.x + 35
		z: 1
	curve: "ease-in-out"
	time: 0.5

animCircleAOut = new Animation
	layer: circleA
	properties: 
		x: circleA.x 
		z: 3
	curve: "ease-in-out"
	time: 0.5
	
animCircleAIn.start()

animCircleAIn.on "end", ->
		circleA.z = 3
 	animCircleAOut.start()
animCircleAOut.on "end", ->
		circleA.z = 1
 	animCircleAIn.start()

#Circle B Animation

animCircleBIn = new Animation
	layer: circleB
	properties: 
		x: circleB.x - 35
	curve: "ease-in-out"
	time: 0.5

animCircleBOut = new Animation
	layer: circleB
	properties: 
		x: circleB.x 
	curve: "ease-in-out"
	time: 0.5
	
animCircleBIn.start()
# 
animCircleBIn.on "end", ->
	animCircleBOut.start()
animCircleBOut.on "end", ->
	animCircleBIn.start()


