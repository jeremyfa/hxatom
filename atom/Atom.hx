/**
	Atom global for dealing with packages, themes, menus, and the window.
**/
package atom;

extern class Atom {
	static var atom(get,never):atom.AtomEnvironment;
	private static inline function get_atom():atom.AtomEnvironment return untyped __js__('atom');
}
