/**
 * Created on 11.5.2014.
 */
package newgame {
import flash.display.BitmapData;
import flash.display.Sprite;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.api.IContext;

import robotlegs.bender.framework.impl.Context;

public class NewGameModule extends Sprite {
    private var _context:IContext;
    public function NewGameModule() {
        super();

        init();
    }

    private function init():void {
        this._context = new Context()
                .install(MVCSBundle)
                .configure(NewGameConfig, new ContextView(this));

    }
}
}
