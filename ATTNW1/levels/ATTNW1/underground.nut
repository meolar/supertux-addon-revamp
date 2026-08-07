if(! ("underground" in state)){
	state.underground <- false;
  print("underground state initialized\n");
}

function go_underground(under){
  water.fade(under ? 0 : 1, 1);
  spaceblack.fade(under ? 1 : 0, 1);
 
  state.underground <- under;
}

go_underground(state.underground);
