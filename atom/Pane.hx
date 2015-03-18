package atom;
@:native("Pane") extern class Pane {
	function onDidActivate(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidChangeActive(callback:haxe.Constraints.Function):atom.Disposable;
	function observeActive(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidAddItem(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidRemoveItem(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidMoveItem(callback:haxe.Constraints.Function):atom.Disposable;
	function observeItems(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidChangeActiveItem(callback:haxe.Constraints.Function):atom.Disposable;
	function observeActiveItem(callback:haxe.Constraints.Function):atom.Disposable;
	function onWillDestroyItem(callback:haxe.Constraints.Function):atom.Disposable;
	function getItems():Array<Dynamic>;
	function getActiveItem():Dynamic;
	function itemAtIndex(index:Float):Dynamic;
	function activateNextItem():Void;
	function activatePreviousItem():Void;
	function moveItemRight():Void;
	function moveItemLeft():Void;
	function getActiveItemIndex():Float;
	function activateItemAtIndex(index:Float):Void;
	function activateItem():Void;
	function addItem(item:Dynamic, index:Float):Dynamic;
	function addItems(items:Array<Dynamic>, index:Float):Array<Dynamic>;
	function moveItem(item:Dynamic, index:Float):Void;
	function moveItemToPane(item:Dynamic, pane:atom.Pane, index:Float):Void;
	function destroyActiveItem():Void;
	function destroyItem(item:Dynamic):Void;
	function destroyItems():Void;
	function destroyInactiveItems():Void;
	function saveActiveItem():Void;
	function saveActiveItemAs(nextAction:haxe.Constraints.Function):Void;
	function saveItem(item:Dynamic, nextAction:haxe.Constraints.Function):Void;
	function saveItemAs(item:Dynamic, nextAction:haxe.Constraints.Function):Void;
	function saveItems():Void;
	function itemForURI(uri:String):Void;
	function activateItemForURI():Bool;
	function isActive():Bool;
	function activate():Void;
	function destroy():Void;
	function splitLeft(params:Dynamic<Dynamic>):atom.Pane;
	function splitRight(params:Dynamic<Dynamic>):atom.Pane;
	function splitUp(params:Dynamic<Dynamic>):atom.Pane;
	function splitDown(params:Dynamic<Dynamic>):atom.Pane;
}