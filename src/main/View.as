/**
 * Created by px on 10.5.2014.
 */
package main {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;

import org.osflash.signals.ISignal;
import org.osflash.signals.Signal;

public class View extends Sprite implements IView {
    private var _click:ISignal;

    public function View() {
        this._click = new Signal(int, int);
    }

    public function setView() {
        this.addChild(new Bitmap(new BitmapData(100, 150, false, 0x33dd11)));
        this.x = this.y = 100;

        this.addEventListener(MouseEvent.CLICK, onClickHandler);
    }

    private function onClickHandler(event:MouseEvent):void {
        this._click.dispatch(event.localX, event.localY);
    }

    public function get click():ISignal {
        return this._click;
    }
}
}
