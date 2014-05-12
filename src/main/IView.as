/**
 * Created by px on 10.5.2014.
 */
package main {
import org.osflash.signals.ISignal;

public interface IView {
    function setView():void;
    function get click():ISignal;
}
}
