
fade_time <- 0.35;

if(! ("underground" in state)){
  state.underground <- false;
  print("[DEBUG] Underground state initialized\\n");
}

if(! ("section2" in state)){
  state.section2 <- false;
  print("[DEBUG] Section2 state initialized\\n");
}

if(! ("lushcave" in state)){
  state.lushcave <- false;
  print("[DEBUG] Lush Cave state initialized\\n");
}

if(! ("cavecover" in state)){
  state.cavecover <- false;
  print("[DEBUG] Cave Covers are now hidden\\n");
}

if(!("ambient_r" in state) || !("ambient_g" in state) || !("ambient_b" in state)){
  state.ambient_r <- 1.0;
  state.ambient_g <- 1.0;
  state.ambient_b <- 1.0;
  print("[DEBUG] Ambient light state initialized\\n");
}

function go_section2(under){
  ug_section_2.fade(under ? 0 : 1, fade_time);
  ug_section_1.fade(under ? 1 : 0, fade_time);
  ug_section_lush.fade(under ? 1 : 0, fade_time);
  state.section2 <- under;
}

function go_lushcave(under){
  ug_section_lush.fade(under ? 0 : 1, fade_time);
  ug_section_2.fade(under ? 1 : 0, fade_time);
  ug_section_1.fade(under ? 1 : 0, fade_time);
  state.lushcave <- under;
}

function hide_cavecover(hide){
  ug_section_lush.fade(hide ? 0 : 1, fade_time);
  ug_section_2.fade(hide ? 0 : 1, fade_time);
  ug_section_1.fade(hide ? 0 : 1, fade_time);
  state.cavecover <- hide;
}

function go_underground(under){
  above_ug.fade(under ? 0 : 1, fade_time);
  above_ug_1.fade(under ? 0 : 1, fade_time);
  above_ug_2.fade(under ? 0 : 1, fade_time);
  above_ug_3.fade(under ? 0 : 1, fade_time);
  above_ug_4.fade(under ? 0 : 1, fade_time);
  above_ug_5.fade(under ? 0 : 1, fade_time);
  ug_walls.fade(under ? 1 : 0, fade_time);
  ug_bp1.fade(under ? 1 : 0, fade_time);
  ug_bp2.fade(under ? 1 : 0, fade_time);
  ug_bp3.fade(under ? 1 : 0, fade_time);
  ug_paths.fade(under ? 1 : 0, fade_time);
  ug_ceil1.fade(under ? 1 : 0, fade_time);
  ug_ceil2.fade(under ? 1 : 0, fade_time);
  ug_ceil3.fade(under ? 1 : 0, fade_time);
  ug_top.fade(under ? 1 : 0, fade_time);
  state.underground <- under;
}

function set_light(r, g, b, time = 0.0) {
  state.ambient_r <- r;
  state.ambient_g <- g;
  state.ambient_b <- b;
  worldmap.settings.fade_to_ambient_light(r, g, b, time);
}

go_underground(state.underground);
set_light(state.ambient_r, state.ambient_g, state.ambient_b, 0.0);

// ============================================================================
//   SECRET AREAS
// ============================================================================

if(! ("secret1unlocked" in state)){
  state.secret1unlocked <- false;
  print("[DEBUG] Secret 1 state initialized\\n");
}

if(! ("secret2unlocked" in state)){
  state.secret2unlocked <- false;
  print("[DEBUG] Secret 2 state initialized\\n");
}

function toggle_secret_road(tilemap, enabled){
  tilemap.fade(enabled ? 1 : 0, fade_time);
  tilemap.set_solid(enabled);
}

toggle_secret_road(secret1, state.secret1unlocked);
toggle_secret_road(secret2, state.secret2unlocked);

// ============================================================================
//   PATH SPLITS
// ============================================================================

if(! ("split17d" in state)){
  state.split17d <- false;
  print("[DEBUG] Split 17 down state initialized\\n");
}

if(! ("split17u" in state)){
  state.split17u <- false;
  print("[DEBUG] Split 17 up initialized\\n");
}

if(! ("split26r" in state)){
  state.split26r <- false;
  print("[DEBUG] Split 26 down state initialized\\n");
}

if(! ("split26l" in state)){
  state.split26l <- false;
  print("[DEBUG] Split 26 up initialized\\n");
}

if(! ("split34d" in state)){
  state.split34d <- false;
  print("[DEBUG] Split 34 down state initialized\\n");
}

if(! ("split34u" in state)){
  state.split34u <- false;
  print("[DEBUG] Split 34 up initialized\\n");
}

function toggle_split(id, enabled){
  state["split" + id] <- enabled;
  this["split" + id + "rock"].fade(enabled ? 0 : 1, fade_time);
  this["split" + id + "path"].set_solid(enabled);
}

toggle_split("17u", state.split17u);
toggle_split("17d", state.split17d);
toggle_split("26r", state.split26r);
toggle_split("26l", state.split26l);
toggle_split("34u", state.split34u);
toggle_split("34d", state.split34d);

