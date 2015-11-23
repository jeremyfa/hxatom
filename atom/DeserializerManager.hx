/**
	Manages the deserializers used for serialized state
**/
package atom;
@:jsRequire("atom", "DeserializerManager") extern class DeserializerManager {
	/**
		Register the given class(es) as deserializers.
	**/
	function add(deserializers:Array<Dynamic>):Dynamic;
	/**
		Deserialize the state and params.
	**/
	function deserialize(state:Dynamic<Dynamic>):Dynamic;
}