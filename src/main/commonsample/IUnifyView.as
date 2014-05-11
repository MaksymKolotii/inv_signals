/**
 * Created on 10.5.2014.
 */
package main.commonsample {
import org.osflash.signals.ISignal;

public interface IUnifyView {

    function setView():void;
    function get close():ISignal;

}
}
