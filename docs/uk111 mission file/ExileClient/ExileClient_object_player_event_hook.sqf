/**
 * ExileClient_object_player_event_hook
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
// DO NOT HOOK RESPAWN!

// Triggered when the unit is killed.
player addEventHandler ["Killed", { _this call ExileClient_object_player_event_onKilled}];

// Triggers when a unit shoots
player addEventHandler ["Fired", { _this call ExileClient_object_player_event_onFired}];

// Triggered when our unit shoots or a unit next to it
player addEventHandler ["FiredNear", { _this call ExileClient_object_player_event_onFiredNear}];

// Triggered when our player is hit by an explosion
player addEventHandler ["Explosion", { _this call ExileClient_object_player_event_onExplosion}];

//Added on 1.0.3
player addEventHandler ["Hit", { _this call ExileClient_object_player_event_onHit}];

// Triggered when our player damaged
player addEventHandler ["HandleDamage", { _this call ExileClient_object_player_event_onHandleDamage}];

// Triggers when a unit puts an item in a container.
player addEventHandler ["Put", { _this call ExileClient_object_player_event_onPut}];

// Triggers when a unit takes an item from a container.
player addEventHandler ["Take", { _this call ExileClient_object_player_event_onTake}];

// Triggered when a unit opens inventory. 
player addEventHandler ["InventoryOpened", { _this call ExileClient_object_player_event_onInventoryOpened}];

// Triggered when a unit closes inventory.
player addEventHandler ["InventoryClosed", { _this call ExileClient_object_player_event_onInventoryClosed}];

true