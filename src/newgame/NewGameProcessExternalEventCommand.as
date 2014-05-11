/**
 * Created on 11.5.2014.
 */
package newgame {
import moduleconnection.ModularConnectorEvent;

import robotlegs.bender.extensions.commandCenter.api.ICommand;

public class NewGameProcessExternalEventCommand implements ICommand {

    [Inject]
    public var event:ModularConnectorEvent;

    public function execute():void {
        trace(event);
    }
}
}
