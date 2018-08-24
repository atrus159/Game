var r = 0;
var theta = 0;
while(place_meeting(destinationX+r*cos(theta),destinationY+r*sin(theta),nonpathable)){
	//r +=random(5);
	//theta += random(2);
	r +=1;
	theta +=1;
}
destinationX += (r)*cos(theta);
destinationY += (r)*sin(theta);