/**
 * Created by px on 9.5.2014.
 */
package main.config {
import main.*;
import main.commonsample.IUnifyView;
import main.commonsample.UnifyMediator;

import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;

public class MainConfig implements IConfig {

    [Inject]
    public var mediatorMap:IMediatorMap;

    public function configure():void {
        this.mediatorMap.map(IStarlingView).toMediator(StarlingViewMediator);

        this.mediatorMap.map(IView).toMediator(ViewMediator);
        this.mediatorMap.map(IUnifyView).toMediator(UnifyMediator);
    }
}
}
