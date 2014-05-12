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
        super();

        this._click = new Signal(int, int);
    }

    public function setView():void {
        var bitmap:Bitmap = new Bitmap(new BitmapData(100, 100, false, 0x0));
        bitmap.x = 200;
        this.addChild(bitmap);

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
