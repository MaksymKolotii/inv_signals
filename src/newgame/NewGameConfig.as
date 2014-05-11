/**
 * Created on 11.5.2014.
 */
package newgame {
import moduleconnection.ModularConnectorEvent;
import moduleconnection.ModuleConnectorChannelEnum;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.modularity.api.IModuleConnector;
import robotlegs.bender.framework.api.IConfig;

public class NewGameConfig implements IConfig {

    [Inject]
    public var commandMap:IEventCommandMap;

    [Inject]
    public var moduleConnector:IModuleConnector;

    public function configure():void {
        this.commandMap.map(ModularConnectorEvent.PAUSE, ModularConnectorEvent).toCommand(NewGameProcessExternalEventCommand);
        this.commandMap.map(ModularConnectorEvent.SHOW, ModularConnectorEvent).toCommand(NewGameShowCommand);

        this.moduleConnector.onChannel(ModuleConnectorChannelEnum.MAIN_TO_GAME).receiveEvent(ModularConnectorEvent.PAUSE);
        this.moduleConnector.onDefaultChannel().receiveEvent(ModularConnectorEvent.SHOW);
    }
}
}
