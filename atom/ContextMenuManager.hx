/**
	Provides a registry for commands that you'd like to appear in the
	context menu.
**/
package atom;
@:jsRequire("atom", "ContextMenuManager") extern class ContextMenuManager {
	/**
		Add context menu items scoped by CSS selectors.
	**/
	function add(itemsBySelector:{ @:optional
	var label : String; @:optional
	var command : String; @:optional
	var enabled : Bool; @:optional
	var submenu : Array<Dynamic>; @:optional
	var type : Dynamic; @:optional
	var visible : Bool; @:optional
	var created : Dynamic -> Dynamic; @:optional
	var shouldDisplay : Dynamic -> Dynamic; }):atom.Disposable;
}