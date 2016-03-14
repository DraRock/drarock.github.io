bg = new BackgroundLayer 
	backgroundColor: "#222A38"

circleA = new Layer
	backgroundColor: "#00A967",
	width: 25, height: 25,
	borderRadius: 50
	
circleB = new Layer
	backgroundColor: "#FFF",
	width: 25, height: 25,
	borderRadius: 50
	
circleA.center()
circleB.center()
circleA.x -= 20
circleB.x += 20
circleA.index = 1
circleB.index = 2

animCircleAIn = new Animation
	layer: circleA
	properties: 
		x: circleA.x + 35
		index: 1
	curve: "ease-in-out"
	time: 0.5

animCircleAOut = new Animation
	layer: circleA
	properties: 
		x: circleA.x 
		index: 3
	curve: "ease-in-out"
	time: 0.5
	
animCircleAIn.start()

animCircleAIn.on "end", ->
		circleA.index = 3
 	animCircleAOut.start()
animCircleAOut.on "end", ->
		circleA.index = 1
 	animCircleAIn.start()

#Circle B Animation

animCircleBIn = new Animation
	layer: circleB
	properties: 
		x: circleB.x - 30
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


