package main {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.text.TextField;

import game.GameModule;

import main.config.MainConfig;
import main.config.MainModuleConnectionConfig;

import newgame.NewGameModule;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;
import robotlegs.extensions.starlingViewMap.StarlingViewMapExtension;

import starling.core.Starling;

public class MainModule extends Sprite {
    private var _context:IContext;
    private var _view:View;
    private var _st:Starling;

    public function MainModule() {
        super();

        this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
    }

    private function onAddedToStage(event:Event):void {
        init();
    }

    private function init():void {
        initStarling();

        this._context = new Context()
                .install(MVCSBundle, StarlingViewMapExtension)
                .configure(MainConfig, MainModuleConnectionConfig, new ContextView(this), this._st);

        this.addChild(new Bitmap(new BitmapData(100, 100, false, 0xff0f00)));
        var textField:TextField = new TextField();
        textField.text = "Main module";
        textField.width = 200;
        textField.height = 50;
        this.addChild(textField);
        this.addEventListener(MouseEvent.CLICK, onClick);

        this._view = new View();

        this.addChild(new GameModule());
        this.addChild(new NewGameModule());

    }

    private function initStarling():void {
        this._st = new Starling(StarlingRoot, this.stage);
        this._st.addEventListener(Event.CONTEXT3D_CREATE, contextCreateHandler);
        this._st.start();
    }

    private function contextCreateHandler(...args):void {
        trace(args);
    }

    private function onClick(event:MouseEvent):void {
        this.addChild(this._view);
    }
}
}