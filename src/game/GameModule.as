/**
 * Created on 10.5.2014.
 */
package game {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;

import game.config.GameConfig;
import game.config.GameModuleConnectionConfig;
import game.view.GameView;

import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;

public class GameModule extends Sprite {
    private var _context:IContext;

    public function GameModule() {
        super();

        init();
    }

    private function init():void {
        this._context = new Context()
                .install(MVCSBundle)
                .configure(GameConfig, GameModuleConnectionConfig, new ContextView(this));

        this.addChild(new Bitmap(new BitmapData(100, 100, false, 0xffafaf)));
        this.x = this.y = 200;

        this.addEventListener(MouseEvent.CLICK, onClick);
    }

    private function onClick(event:MouseEvent):void {
        this.addChild(new GameView());
    }
}
}
