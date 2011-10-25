package com.theredspace.controller {

import com.theredspace.util.ViewTypes;

import org.robotlegs.mvcs.Command;

public class StartupCommand extends Command {
    [Inject]public var changeViewSignal:ChangeViewSignal;
    override public function execute():void {
        changeViewSignal.dispatch(ViewTypes.INTRO_VIEW);
    }
}
}