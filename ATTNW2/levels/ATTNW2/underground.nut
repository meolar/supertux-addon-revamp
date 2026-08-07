if(! ("underground" in state)){
	state.underground <- false;
  print("underground state initialized\n");
}

function go_underground(under){
  hill_deco.fade(under ? 0 : 1, 1);
  hills.fade(under ? 0 : 1, 1);
  buildings.fade(under ? 0 : 1, 1);
  decoration.fade(under ? 0 : 1, 1);
  water_effect.fade(under ? 0 : 1, 1);
  water.fade(under ? 0 : 1, 1);

  underground_cover.fade(under ? 1 : 0, 1);
  underground.fade(under ? 1 : 0, 1);
 
  state.underground <- under;
}

go_underground(state.underground);


