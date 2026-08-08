function add_item(item)
{
  local items = state.key_items;
  items[item] = true;
  update_items();
}

function level2_init()
{
 
  add_item("key");
  Tux.deactivate();
  Effect.sixteen_to_nine(2);
  Text.set_text(translate("---Insert Cutscene Here---"));
  Tux.walk(100);
  Text.fade_in(2);
  wait(4);
  Text.fade_out(1);
  wait(1);
  Effect.four_to_three();
  Tux.activate();
}

/***************************************
 * Handling of the key *
 ***************************************/
if(! ("key_items" in state))
	state.key_items <- {}
local items = state.key_items;
if(! ("dashboard" in items))
	items.dashboard <- false;
if(! ("key" in items))
	items.key <- false;
/// this function updates the item images (call this if tux has collected the key)
function update_items()
{

	local items = state.key_items;

	item_key.set_action(items.key ? "display" : "outline");

}

local x = 0;
local y = 0;

item_key <- FloatingImage("/images/objects/keys/key_air.sprite");
item_key.set_anchor_point(ANCHOR_TOP_LEFT);
item_key.set_pos(16, 8);
item_key.set_visible(true);

update_items();
