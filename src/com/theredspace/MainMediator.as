/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace {
import com.theredspace.controller.ChangeViewSignal;

import org.robotlegs.mvcs.Mediator;

public class MainMediator extends Mediator{
    [Inject]public var changeViewSignal:ChangeViewSignal
    [Inject]public var view:twentyeightcatslater;
    override public function onRegister():void {
        changeViewSignal.add(onViewChanged);
    }

    private function onViewChanged(newView:String):void {
        view.changeView(newView);
    }
}
}
