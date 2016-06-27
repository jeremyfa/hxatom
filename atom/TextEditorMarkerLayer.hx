/**
	*Experimental:* A container for a related set of markers at the
	{TextEditor} level. Wraps an underlying {MarkerLayer} on the editor's
	{TextBuffer}.
**/
package atom;
@:jsRequire("atom", "TextEditorMarkerLayer") extern class TextEditorMarkerLayer {
	/**
		Destroy this layer. 
	**/
	function destroy():Dynamic;
	/**
		Get an existing marker by its id.
	**/
	function getMarker():atom.TextEditorMarker;
	/**
		Get all markers in the layer.
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
		Create a marker on this layer with the given range in buffer
		coordinates.
	**/
	function markBufferRange():Dynamic;
	/**
		Create a marker on this layer with the given range in screen
		coordinates.
	**/
	function markScreenRange():Dynamic;
	/**
		Create a marker on this layer with the given buffer position and no
		tail.
	**/
	function markBufferPosition():Dynamic;
	/**
		Create a marker on this layer with the given screen position and no
		tail.
	**/
	function markScreenPosition():Dynamic;
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