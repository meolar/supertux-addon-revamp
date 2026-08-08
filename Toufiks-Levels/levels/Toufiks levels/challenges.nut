this.code<-{a="_",b="_",c="_",d="_",e="_",f="_"}
function Challenges(){
this.code.a<-"_";
this.code.b<-"_";
this.code.c<-"_";
this.code.d<-"_";
this.code.e<-"_";
this.code.f<-"_";
this.posledni<-"a";
}
Challenges();
Text.set_anchor_point(ANCHOR_TOP_LEFT);
Text.set_pos(0,0);
Text.set_text("  Please, enter the secret password.")
Text.fade_in(0.2);

function toufik(tfk){
 if(this.posledni!="g"){
  this.code[this.posledni]<-tfk;
  this.kod<-this.code.a+this.code.b+this.code.c+this.code.d+this.code.e+this.code.f;
  Text.set_text(this.kod);
  if (this.posledni=="f"){
   this.posledni<-"g"
   if(this.kod=="261197"){
    Text.set_text("261197 - Challenge levels are unlocked");
					play_sound("sounds/turnkey.ogg")
	Tux.trigger_sequence("fireworks") 
	wait(10)
	Level.finish(true)
	finish() 
	            Challenges();
	           }else{
            Text.set_text("        Wrong password !");
				play_sound("sounds/fall.wav")
            Challenges();
   }
  }else{
   if (this.posledni=="e"){
    this.posledni<-"f"
   }
   if (this.posledni=="d"){
    this.posledni<-"e"
   }
   if (this.posledni=="c"){
    this.posledni<-"d"
   }
   if (this.posledni=="b"){
    this.posledni<-"c"
   }
   if (this.posledni=="a"){
    this.posledni<-"b"
   }
  }
 }
}