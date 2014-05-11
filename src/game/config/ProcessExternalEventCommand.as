/**
 * Created on 10.5.2014.
 */
package game.config {
import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.extensions.commandCenter.api.ICommand;

public class ProcessExternalEventCommand implements ICommand {

    [Inject]
    public var event:ModularConnectorEvent;

    public function execute():void {
        trace(event);
    }
}
}
