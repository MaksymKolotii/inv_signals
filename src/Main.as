package {

import flash.display.Sprite;
import flash.text.TextField;

import starling.core.Starling;
import starling.events.Event;

public class Main extends Sprite {
    private var _st:Starling;
    public function Main() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);

        initStarling();
    }

    private function initStarling():void {
        this._st = new Starling(StarlingRoot, this.stage);

        this._st.addEventListener(Event.CONTEXT3D_CREATE, contextCreateHandler);

        this._st.start();
    }

    private function contextCreateHandler(event:Event):void {
        trace(event);
    }
}
}
