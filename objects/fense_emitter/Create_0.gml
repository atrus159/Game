
var nearest = instance_nearest_notme(fense_emitter);
var myLink = instance_create_layer(x,y, "enviornmental",fense_link)
myLink.link1 = self;
myLink.link2 = nearest;

var this = self
with(fense_emitter){
	if(self != this && point_distance(x,y,other.x,other.y)<300 && id != nearest){
		var myLink = instance_create_layer(x,y, "enviornmental",fense_link)
		myLink.link1 = self;
		myLink.link2 = other;
	}
}