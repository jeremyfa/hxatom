package atom;
@:native("Selection") extern class Selection {
	function onDidChangeRange(callback:haxe.Constraints.Function):atom.Disposable;
	function onDidDestroy(callback:haxe.Constraints.Function):atom.Disposable;
	function getScreenRange():atom.Range;
	function setScreenRange(screenRange:atom.Range, options:Dynamic<Dynamic>):Void;
	function getBufferRange():atom.Range;
	function setBufferRange(screenRange:atom.Range, options:Dynamic<Dynamic>):Void;
	function getBufferRowRange():Dynamic;
	function isEmpty():Void;
	function isReversed():Void;
	function isSingleScreenLine():Dynamic;
	function getText():Dynamic;
	function intersectsBufferRange(bufferRange:atom.Range):Bool;
	function intersectsWith(otherSelection:atom.Selection):Bool;
	function clear():Void;
	function selectToScreenPosition(position:atom.Point):Void;
	function selectToBufferPosition(position:atom.Point):Void;
	function selectRight(columnCount:Float):Void;
	function selectLeft(columnCount:Float):Void;
	function selectUp(rowCount:Float):Void;
	function selectDown(rowCount:Float):Void;
	function selectToTop():Void;
	function selectToBottom():Void;
	function selectAll():Void;
	function selectToBeginningOfLine():Void;
	function selectToFirstCharacterOfLine():Void;
	function selectToEndOfLine():Void;
	function selectToBeginningOfWord():Void;
	function selectToEndOfWord():Void;
	function selectToBeginningOfNextWord():Void;
	function selectToPreviousWordBoundary():Void;
	function selectToNextWordBoundary():Void;
	function selectToBeginningOfNextParagraph():Void;
	function selectToBeginningOfPreviousParagraph():Void;
	function selectWord():atom.Range;
	function expandOverWord():Void;
	function selectLine(row:Float):Void;
	function expandOverLine():Void;
	function insertText(text:String, options:Dynamic<Dynamic>):Void;
	function backspace():Void;
	function deleteToBeginningOfWord():Void;
	function deleteToBeginningOfLine():Void;
	function delete():Void;
	function deleteToEndOfLine():Void;
	function deleteToEndOfWord():Void;
	function deleteSelectedText():Void;
	function deleteLine():Void;
	function joinLines():Void;
	function outdentSelectedRows():Void;
	function autoIndentSelectedRows():Void;
	function toggleLineComments():Void;
	function cutToEndOfLine():Void;
	function cut(maintainClipboard:Bool, fullLine:Bool):Void;
	function copy(maintainClipboard:Bool, fullLine:Bool):Void;
	function fold():Void;
	function indentSelectedRows():Void;
	function addSelectionBelow():Void;
	function addSelectionAbove():Void;
	function merge(otherSelection:atom.Selection, options:Dynamic<Dynamic>):Void;
	function compare(otherSelection:atom.Selection):Void;
}