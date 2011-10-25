/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.util {
import com.theredspace.view.IView;
import com.theredspace.view.game.component.GameView;
import com.theredspace.view.intro.component.IntroView;
import com.theredspace.view.outro.component.OutroView;

public class ViewFactory {
    public static function getView(type:String):IView{
        var newView:IView;
        switch(type){
            case ViewTypes.INTRO_VIEW:
                newView = new IntroView();
            break;
            case ViewTypes.GAME_VIEW:
                newView = new GameView();
            break;
            case ViewTypes.OUTRO_VIEW:
                newView = new OutroView();
            break;
        }

        return newView;
    }
}
}
