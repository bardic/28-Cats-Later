/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.view.game {
import com.theredspace.controller.GameLoopSignal;
import com.theredspace.view.game.component.GameView;

import org.robotlegs.mvcs.Mediator;

public class GameMediator extends Mediator{
    [Inject]public var view:GameView;
    [Inject]public var gameloop:GameLoopSignal;

    override public function onRegister():void {
        gameloop.add(onGameLoop)
        gameloop.start();
    }

    private function onGameLoop():void {
        trace("In game loop");
    }
}
}
