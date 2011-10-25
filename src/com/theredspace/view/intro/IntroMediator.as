/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.view.intro {
import com.theredspace.controller.ChangeViewSignal;
import com.theredspace.util.ViewTypes;
import com.theredspace.view.intro.component.IntroView;

import flash.events.MouseEvent;

import org.robotlegs.mvcs.Mediator;

public class IntroMediator extends Mediator{
    [Inject]public var view:IntroView;
    [Inject]public var changeViewSignal:ChangeViewSignal;
    override public function onRegister():void {
        eventMap.mapListener(view.gameButton, MouseEvent.CLICK, onGameButtonClicked)
    }

    private function onGameButtonClicked(ev:MouseEvent):void {
        changeViewSignal.dispatch(ViewTypes.GAME_VIEW);
    }
}
}
