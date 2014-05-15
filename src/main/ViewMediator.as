/**
 * Created by px on 10.5.2014.
 */
package main {
import main.event.MainModuleEvent;

import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.bundles.mvcs.Mediator;
import robotlegs.bender.extensions.modularity.api.IModuleConnector;

public class ViewMediator extends Mediator {

    [Inject]
    public var view:IView;

    [Inject]
    public var moduleConnector:IModuleConnector;

    public function ViewMediator() {
        super();
    }

    override public function initialize():void {
        trace("Init View mediator");

        this.view.setView();
        this.view.click.add(onViewClick);
    }

    private function onViewClick(x:int, y:int):void {
        trace(x + ", " + y);

        dispatch(new ModularConnectorEvent(ModularConnectorEvent.PAUSE));
        dispatch(new MainModuleEvent(MainModuleEvent.SOME));
    }

    override public function destroy():void {
        trace("Destroy View mediator");
    }
}
}
