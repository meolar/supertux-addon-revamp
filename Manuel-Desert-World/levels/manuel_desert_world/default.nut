function got_achievement(achievement){
  state.desert_achievements[achievement] <- true;
  state.desert_achievements <- achievements;
  Text.set_text(_("Challenge completed!"));
  Text.fade_in(0.2);
  wait(3);
  Text.fade_out(0.2);
}

if(! ("desert_achievements" in state))
  state.desert_achievements <- {}

foreach(name in ["hotcontinent", "southerndunes", "tumbleweed", "chaoscanyon", "moreholes", "underpaths", "buildway", "stalactite", "unsolidpath", "firstboss", "backsurface", "cactus", "woodcrusher", "entrance", "escape", "pyramidremains", "journeyexplosives", "gate", "hillvillage", "secondboss", "moistground", "sandfall", "longestriver", "garden", "house", "pyramidpuzzle", "insidefactory", "assemblyline", "lightlava", "finalboss", "challenges", "drill", "fireflower", "secretbonus", "waldo"])
{
  if(! (name in state.desert_achievements))
    state.desert_achievements[name] <- false;
}

function found_block(block){
  state.secret_blocks[block] <- true;
  state.secret_blocks <- blocks;
}

if(! ("secret_blocks" in state))
  state.secret_blocks <- {}

foreach(name in ["hotcontinent", "southerndunes", "tumbleweed", "chaoscanyon", "moreholes", "underpaths", "buildway", "stalactite", "unsolidpath", "backsurface", "cactus", "woodcrusher", "entrance", "escape", "pyramidremains", "journeyexplosives", "gate", "hillvillage", "moistground", "sandfall", "longestriver", "garden", "house", "pyramidpuzzle", "insidefactory", "assemblyline", "lightlava", "challenges", "all", "waldo"])
{
  if(! (name in state.secret_blocks))
    state.secret_blocks[name] <- false;
}

if(state.secret_blocks.hotcontinent){
if(state.secret_blocks.southerndunes){
if(state.secret_blocks.tumbleweed){
if(state.secret_blocks.chaoscanyon){
if(state.secret_blocks.moreholes){
if(state.secret_blocks.underpaths){
if(state.secret_blocks.buildway){
if(state.secret_blocks.stalactite){
if(state.secret_blocks.unsolidpath){
if(state.secret_blocks.backsurface){
if(state.secret_blocks.cactus){
if(state.secret_blocks.entrance){
if(state.secret_blocks.escape){
if(state.secret_blocks.woodcrusher){
if(state.secret_blocks.pyramidremains){
if(state.secret_blocks.journeyexplosives){
if(state.secret_blocks.gate){
if(state.secret_blocks.hillvillage){
if(state.secret_blocks.moistground){
if(state.secret_blocks.sandfall){
if(state.secret_blocks.longestriver){
if(state.secret_blocks.garden){
if(state.secret_blocks.house){
if(state.secret_blocks.pyramidpuzzle){
if(state.secret_blocks.insidefactory){
if(state.secret_blocks.assemblyline){
if(state.secret_blocks.lightlava){
if(state.secret_blocks.challenges){
found_block("all")
}}}}}}}}}}}}}}}}}}}}}}}}}}}}
