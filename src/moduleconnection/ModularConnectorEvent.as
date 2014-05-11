/**
 * Created on 10.5.2014.
 */
package moduleconnection {
import flash.events.Event;

public class ModularConnectorEvent extends Event {
    public static const PAUSE:String = "pause";
    public static const SHOW:String = "show";

    public function ModularConnectorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
    }

    override public function clone():Event {
        return new ModularConnectorEvent(this.type, this.bubbles, this.cancelable);
    }
}
}
