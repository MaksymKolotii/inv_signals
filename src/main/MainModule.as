package main {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;

import game.GameModule;

import main.config.MainConfig;
import main.config.MainModuleConnectionConfig;

import newgame.NewGameModule;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.contextView.ContextViewExtension;
import robotlegs.bender.extensions.modularity.ModularityExtension;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;

public class MainModule extends Sprite {
    private var _context:IContext;
    private var _view:View;

    public function MainModule() {
        super();

        init();
    }

    private function init():void {
        this._context = new Context()
                .install(MVCSBundle)
                .configure(MainConfig, MainModuleConnectionConfig, new ContextView(this));

        this.addChild(new Bitmap(new BitmapData(100, 100, false, 0xff0f00)));
        this.addEventListener(MouseEvent.CLICK, onClick);

        this._view = new View();

        this.addChild(new GameModule());
        this.addChild(new NewGameModule());
    }

    private function onClick(event:MouseEvent):void {
        this.addChild(this._view);
    }
}
}