package {

import flash.display.Sprite;
import flash.text.TextField;

import main.MainModule;

[SWF(width=800, height=600)]
public class Main extends Sprite {

    public function Main() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);

        this.addChild(new MainModule());
    }
}
}
