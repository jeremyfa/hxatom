
import js.html.DivElement;
import js.Browser.document;

class ExampleView {

    public var element(get,null):DivElement;

    public function new(serializedState:Dynamic) {
        // Create root element
        element = document.createDivElement();
        element.classList.add('example');

        // Create message element
        var message = document.createDivElement();
        message.textContent = "The Example package is Alive! It's ALIVE! (With Haxe!)";
        message.classList.add('message');
        element.appendChild(message);
    }

    /** Returns an object that can be retrieved when package is activated */
    public function serialize():Dynamic {
        return {};
    }

    /** Tear down any state and detach */
    public function destroy():Void {
        element.remove();
    }

    public function get_element():DivElement {
        return element;
    }

}
