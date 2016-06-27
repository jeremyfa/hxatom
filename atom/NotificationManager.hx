/**
	A notification manager used to create {Notification}s to be shown
	to the user.
**/
package atom;
@:jsRequire("atom", "NotificationManager") extern class NotificationManager {
	/**
		Invoke the given callback after a notification has been added.
	**/
	function onDidAddNotification(callback:atom.Notification -> Void):atom.Disposable;
	/**
		Add a success notification.
	**/
	function addSuccess(message:String, ?options:{ @:optional
	var detail : String; @:optional
	var dismissable : Bool; @:optional
	var icon : String; }):Dynamic;
	/**
		Add an informational notification.
	**/
	function addInfo(message:String, ?options:{ @:optional
	var detail : String; @:optional
	var dismissable : Bool; @:optional
	var icon : String; }):Dynamic;
	/**
		Add a warning notification.
	**/
	function addWarning(message:String, ?options:{ @:optional
	var detail : String; @:optional
	var dismissable : Bool; @:optional
	var icon : String; }):Dynamic;
	/**
		Add an error notification.
	**/
	function addError(message:String, ?options:{ @:optional
	var detail : String; @:optional
	var dismissable : Bool; @:optional
	var icon : String; }):Dynamic;
	/**
		Add a fatal error notification.
	**/
	function addFatalError(message:String, ?options:{ @:optional
	var detail : String; @:optional
	var dismissable : Bool; @:optional
	var icon : String; }):Dynamic;
	/**
		Get all the notifications.
	**/
	function getNotifications():Array<Dynamic>;
}