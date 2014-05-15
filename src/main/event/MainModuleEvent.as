/**
 * Created on 14.5.2014.
 */
package main.event {
import flash.events.Event;

public class MainModuleEvent extends Event {
    public static const SOME:String = "SOME";
    public function MainModuleEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
    }

    override public function clone():Event {
        return new MainModuleEvent(type);
    }
}
}
