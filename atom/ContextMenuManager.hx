/**
	Provides a registry for commands that you'd like to appear in the
	context menu.
**/
package atom;
@:native("ContextMenuManager") extern class ContextMenuManager {
	/**
		Add context menu items scoped by CSS selectors.
	**/
	function add(itemsBySelector:{ var label : String; var command : String; var submenu : Array<Dynamic>; var type : Dynamic; var created : haxe.Constraints.Function; var shouldDisplay : haxe.Constraints.Function; }):Dynamic;
}