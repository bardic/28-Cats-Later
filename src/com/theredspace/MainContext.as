/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace {
import com.theredspace.controller.ChangeViewSignal;
import com.theredspace.controller.GameLoopSignal;
import com.theredspace.controller.StartupCommand;
import com.theredspace.view.game.GameMediator;
import com.theredspace.view.game.component.GameView;
import com.theredspace.view.game.controller.CreatePlayerCommand;
import com.theredspace.view.game.controller.CreatePlayerSignal;
import com.theredspace.view.intro.IntroMediator;
import com.theredspace.view.intro.component.IntroView;
import com.theredspace.view.outro.OutroMediator;
import com.theredspace.view.outro.component.OutroView;

import flash.display.DisplayObjectContainer;

import org.robotlegs.base.ContextEvent;

import org.robotlegs.mvcs.SignalContext;

public class MainContext extends SignalContext{
    public function MainContext(contextView:DisplayObjectContainer) {
        super(contextView);
    }

    override public function startup():void{
        commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);
        injector.mapSingleton(GameLoopSignal);
        injector.mapSingleton(ChangeViewSignal);

        signalCommandMap.mapSignalClass(CreatePlayerSignal,CreatePlayerCommand);

        mediatorMap.mapView(GameView,GameMediator);
        mediatorMap.mapView(IntroView,IntroMediator);
        mediatorMap.mapView(OutroView,OutroMediator);
        mediatorMap.mapView(twentyeightcatslater, MainMediator);
        super.startup();
    }
}
}
