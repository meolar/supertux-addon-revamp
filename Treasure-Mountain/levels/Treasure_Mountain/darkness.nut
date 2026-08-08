print("[DEBUG] level/Treasure_Mountain/darkness.nut loaded\n");

if(! ("darkness" in state))
	state.darkness <- false;

function go_darkness(d){
  fade_time <- 0.35;
  dark.fade(d ? 0.6 : 0.0, fade_time);
  state.darkness <- d;
}

if(! ("darkness" in state))
	state.darkness <- false;
	
go_darkness(state.darkness);