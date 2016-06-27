/**
	Represents a gutter within a {TextEditor}.
**/
package atom;
@:jsRequire("atom", "Gutter") extern class Gutter {
	/**
		Destroys the gutter. 
	**/
	function destroy():Dynamic;
	/**
		Calls your `callback` when the gutter's visibility changes.
	**/
	function onDidChangeVisible(callback:Dynamic -> Void):atom.Disposable;
	/**
		Calls your `callback` when the gutter is destroyed.
	**/
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Hide the gutter. 
	**/
	function hide():Dynamic;
	/**
		Show the gutter. 
	**/
	function show():Dynamic;
	/**
		Determine whether the gutter is visible.
	**/
	function isVisible():Bool;
	/**
		Add a decoration that tracks a {TextEditorMarker}. When the marker moves,
		is invalidated, or is destroyed, the decoration will be updated to reflect
		the marker's state.
	**/
	function decorateMarker(marker:atom.TextEditorMarker, decorationParams:{ var type : Dynamic; }):atom.Decoration;
}