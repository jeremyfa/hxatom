
import atom.Atom.atom;
import atom.CompositeDisposable;
import atom.Panel;

import js.Node.module;
import js.Browser.document;
import js.Browser.console;

class Example {

    static var exampleView:ExampleView;

    static var modalPanel:Panel;

    static var subscriptions:CompositeDisposable;

    static function main():Void {
        module.exports = cast Example;
    }

    static function activate(state:Dynamic):Void {
        exampleView = new ExampleView(state.exampleViewState);
        modalPanel = atom.workspace.addModalPanel({
            item: exampleView.element,
            visible: false
        });

        // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
        subscriptions = new CompositeDisposable();

        // Register command that toggles this view
        subscriptions.add(atom.commands.add('atom-workspace', {
            'example:toggle': function() {
                toggle();
            }
        }));
    }

    static function deactivate():Void {
        modalPanel.destroy();
        subscriptions.dispose();
        exampleView.destroy();
    }

    static function serialize():Dynamic {
        return {
            exampleViewState: exampleView.serialize()
        };
    }

    static function toggle():Void {
        console.log('Example was toggled! (with Haxe!)');

        if (modalPanel.isVisible()) {
            modalPanel.hide();
        }
        else {
            modalPanel.show();
        }
    }

}
