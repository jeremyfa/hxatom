/**
	Represents a decoration that applies to every marker on a given
	layer. Created via {TextEditor::decorateMarkerLayer}. 
**/
package atom;
@:jsRequire("atom", "LayerDecoration") extern class LayerDecoration {
	/**
		Destroys the decoration. 
	**/
	function destroy():Dynamic;
	/**
		Determine whether this decoration is destroyed.
	**/
	function isDestroyed():Bool;
	/**
		Get this decoration's properties.
	**/
	function getProperties():Dynamic<Dynamic>;
	/**
		Set this decoration's properties.
	**/
	function setProperties(newProperties:Dynamic):Dynamic;
	/**
		Override the decoration properties for a specific marker.
	**/
	function setPropertiesForMarker(marker:atom.TextEditorMarker, properties:Dynamic<Dynamic>):Dynamic;
}