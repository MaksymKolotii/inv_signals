/**
 * Created by px on 9.5.2014.
 */
package {
import main.StarlingView;

import starling.display.Sprite;
import starling.events.Event;

public class StarlingRoot extends Sprite {
    public function StarlingRoot() {
        super();

        this.addEventListener(Event.ADDED_TO_STAGE, onAddedtoStage);
    }

    private function onAddedtoStage(event:Event):void {
        var starlingView:StarlingView = new StarlingView();
        starlingView.setStarlingView();
        
        this.addChild(starlingView);
    }
}
}
