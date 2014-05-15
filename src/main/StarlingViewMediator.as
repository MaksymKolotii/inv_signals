/**
 * Created by px on 10.5.2014.
 */
package main {
import robotlegs.bender.bundles.mvcs.Mediator;

public class StarlingViewMediator extends Mediator {

    [Inject]
    public var view:IStarlingView;

    override public function initialize():void {
        trace(this.view);
    }

    override public function destroy():void {
    }
}
}
