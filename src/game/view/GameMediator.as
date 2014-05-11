/**
 * Created on 10.5.2014.
 */
package game.view {
import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.bundles.mvcs.Mediator;

public class GameMediator extends Mediator {
    public function GameMediator() {
        super();
    }

    override public function initialize():void {
        super.initialize();

        this.dispatch(new ModularConnectorEvent(ModularConnectorEvent.SHOW));
    }
}
}
