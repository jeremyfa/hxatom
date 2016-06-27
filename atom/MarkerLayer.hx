/**
	*Experimental:* A container for a related set of markers.
**/
package atom;
@:jsRequire("atom", "MarkerLayer") extern class MarkerLayer {
	/**
		Create a copy of this layer with markers in the same state and
		locations. 
	**/
	function copy():Dynamic;
	/**
		Destroy this layer. 
	**/
	function destroy():Dynamic;
	/**
		Determine whether this layer has been destroyed. 
	**/
	function isDestroyed():Dynamic;
	/**
		Get an existing marker by its id.
	**/
	function getMarker():Array<Dynamic>;
	/**
		Get all existing markers on the marker layer.
	**/
	function getMarkers():Array<Dynamic>;
	/**
		Get the number of markers in the marker layer.
	**/
	function getMarkerCount():Float;
	/**
		Find markers in the layer conforming to the given parameters.
	**/
	function findMarkers():Dynamic;
	/**
		Create a marker with the given range.
	**/
	function markRange():Dynamic;
	/**
		Create a marker with the given position and no tail.
	**/
	function markPosition():Dynamic;
	/**
		Subscribe to be notified asynchronously whenever markers are
		created, updated, or destroyed on this layer. *Prefer this method for
		optimal performance when interacting with layers that could contain large
		numbers of markers.*
	**/
	function onDidUpdate(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Subscribe to be notified synchronously whenever markers are created
		on this layer. *Avoid this method for optimal performance when interacting
		with layers that could contain large numbers of markers.*
	**/
	function onDidCreateMarker(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Subscribe to be notified synchronously when this layer is destroyed.
	**/
	function onDidDestroy():atom.Disposable;
}