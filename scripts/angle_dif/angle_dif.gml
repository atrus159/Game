var a  = argument1 mod 360
var b = argument0 mod 360
if(a<0){
a +=360	
}
if(a>=360){
a -= 360	
}
if(b<0){
b +=360	
}
if(b>=360){
b -= 360	
}

if(a<=180){
	if(b<=180){
		return b-a	
	}else{
		if(b-a < 360-(b-a)){
			return b-a
		}else{
			return 360-b+a	
		}
	}
}else{
		if(b>=180){
		return b-a	
	}else{
		if(a-b < 360-(a-b)){
			return b-a
		}else{
			return -(360-a+b)	
		}
	}
}