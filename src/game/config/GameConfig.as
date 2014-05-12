/**
 * Created on 10.5.2014.
 */
package game.config {
import game.view.GameMediator;
import game.view.GameView;

import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class GameConfig implements IConfig {

    [Inject]
    public var commandMap:IEventCommandMap;

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var some:SomeClass;

    public function configure():void {
        this.commandMap.map(ModularConnectorEvent.PAUSE, ModularConnectorEvent).toCommand(ProcessExternalEventCommand);
        this.mediatorMap.map(GameView).toMediator(GameMediator);
    }
}
}
