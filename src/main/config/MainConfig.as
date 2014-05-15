/**
 * Created by px on 9.5.2014.
 */
package main.config {
import flash.events.IEventDispatcher;

import main.*;
import main.commonsample.IUnifyView;
import main.commonsample.UnifyMediator;
import main.controller.MainModuleCommand;
import main.event.MainModuleEvent;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class MainConfig implements IConfig {

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var injector:IInjector;

    [Inject]
    public var eventDispatcher:IEventDispatcher;

    [Inject]
    public var eventCommapnMap:IEventCommandMap;

    public function configure():void {
        this.mediatorMap.map(IStarlingView).toMediator(StarlingViewMediator);

        this.mediatorMap.map(IView).toMediator(ViewMediator);
        this.mediatorMap.map(IUnifyView).toMediator(UnifyMediator);

        this.eventCommapnMap.map(MainModuleEvent.SOME).toCommand(MainModuleCommand);

        this.injector.map(SomeClass).asSingleton();
    }
}
}
