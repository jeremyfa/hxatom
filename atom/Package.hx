/**
	Loads and activates a package's main module and resources such as
	stylesheets, keymaps, grammar, editor properties, and menus. 
**/
package atom;
@:jsRequire("atom", "Package") extern class Package {
	/**
		Invoke the given callback when all packages have been activated.
	**/
	function onDidDeactivate(callback:haxe.Constraints.Function):atom.Disposable;
	/**
		Are all native modules depended on by this package correctly
		compiled against the current version of Atom?
	**/
	function isCompatible():Bool;
	/**
		Rebuild native modules in this package's dependencies for the
		current version of Atom.
	**/
	function rebuild():js.Promise<Dynamic>;
	/**
		If a previous rebuild failed, get the contents of stderr.
	**/
	function getBuildFailureOutput():String;
}