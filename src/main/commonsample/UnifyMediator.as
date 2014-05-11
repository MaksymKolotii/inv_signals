/**
 * Created on 10.5.2014.
 */
package main.commonsample {
import robotlegs.bender.extensions.mediatorMap.api.IMediator;

public class UnifyMediator implements IMediator {

    [Inject]
    public var view:IUnifyView;

    public function UnifyMediator() {
    }

    public function initialize():void {
        this.view.setView();

        this.view.close.add(onClose);
    }

    public function destroy():void {
    }
    
    private function onClose():void {
        trace("close");
    }
}
}
