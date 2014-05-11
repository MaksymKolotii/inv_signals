/**
 * Created by px on 10.5.2014.
 */
package main {
import org.osflash.signals.ISignal;

public interface IView {
    function setView();
    function get click():ISignal;
}
}
