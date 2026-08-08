
fade_time <- 0.35;

// ============================================================================
//   AMBIENT LIGHT
// ============================================================================

if("ambient_r" in state && "ambient_g" in state && "ambient_b" in state){
  worldmap.settings.fade_to_ambient_light(state.ambient_r,
                                          state.ambient_g,
                                          state.ambient_b,
                                          0);
}

// ============================================================================
//   UNDERGROUND
// ============================================================================

if(! ("underground" in state)){
	state.underground <- false;
  print("[DEBUG] Underground state initialized\n");
}

function go_underground(under){
  Cave_cover1.fade(under ? 0 : 1, fade_time);
  Cave_cover2.fade(under ? 0 : 1, fade_time);
  Cave_cover3.fade(under ? 0 : 1, fade_time);
  Cave_black.fade(under ? 1 : 0, fade_time);
  Cave_dark.fade(under ? 1 : 0, fade_time);
  state.underground <- under;
}

go_underground(state.underground);
