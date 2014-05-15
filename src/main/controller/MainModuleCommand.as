/**
 * Created on 14.5.2014.
 */
package main.controller {
import main.event.MainModuleEvent;

public class MainModuleCommand {

    [Inject]
    public var event:MainModuleEvent;

    public function MainModuleCommand() {
    }

    public function execute():void {
        trace(event);
    }
}
}
