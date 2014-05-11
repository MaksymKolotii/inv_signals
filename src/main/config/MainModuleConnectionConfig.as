/**
 * Created on 10.5.2014.
 */
package main.config {
import moduleconnection.ModularConnectorEvent;
import moduleconnection.ModuleConnectorChannelEnum;

import robotlegs.bender.extensions.modularity.api.IModuleConnector;
import robotlegs.bender.framework.api.IConfig;

public class MainModuleConnectionConfig implements IConfig {

    [Inject]
    public var moduleConnector:IModuleConnector;

    public function configure():void {
        this.moduleConnector.onChannel(ModuleConnectorChannelEnum.MAIN_TO_GAME).relayEvent(ModularConnectorEvent.PAUSE);
    }
}
}
