/**
 * Created by px on 10.5.2014.
 */
package main {
import robotlegs.bender.extensions.mediatorMap.api.IMediator;

public class StarlingViewMediator implements IMediator {

    [Inject]
    public var view:IStarlingView;

    public function initialize():void {
        trace(this.view);
    }

    public function destroy():void {
    }
}
}
