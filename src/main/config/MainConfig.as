/**
 * Created by px on 9.5.2014.
 */
package main.config {
import main.*;
import main.commonsample.IUnifyView;
import main.commonsample.UnifyMediator;

import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class MainConfig implements IConfig {

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var injector:IInjector;

    public function configure():void {
        this.mediatorMap.map(IStarlingView).toMediator(StarlingViewMediator);

        this.mediatorMap.map(IView).toMediator(ViewMediator);
        this.mediatorMap.map(IUnifyView).toMediator(UnifyMediator);

        this.injector.map(SomeClass).asSingleton();
    }
}
}
