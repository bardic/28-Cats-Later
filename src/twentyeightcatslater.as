package {

import com.theredspace.MainContext;
import com.theredspace.util.ViewFactory;
import com.theredspace.util.ViewTypes;
import com.theredspace.view.IView;

import flash.display.Sprite;
import flash.text.TextField;

public class twentyeightcatslater extends Sprite {
    protected var context:MainContext;
    private var _currentViewOnStage:IView
    private var _viewHolder:Sprite;
    public function twentyeightcatslater() {

        _viewHolder = new Sprite();
        addChild(_viewHolder);
        context = new MainContext(this);
    }

    public function changeView(newView:String):void {
        var viewToAdd:IView;
        switch(newView){
            case ViewTypes.INTRO_VIEW:
                viewToAdd = ViewFactory.getView(ViewTypes.INTRO_VIEW);
            break;
            case ViewTypes.GAME_VIEW:
                viewToAdd = ViewFactory.getView(ViewTypes.GAME_VIEW);
            break;
            case ViewTypes.OUTRO_VIEW:
                viewToAdd = ViewFactory.getView(ViewTypes.OUTRO_VIEW);
            break;
        }

        if(_currentViewOnStage && (_currentViewOnStage as Sprite).parent){
            _viewHolder.removeChild(_currentViewOnStage as Sprite);
        }

        _viewHolder.addChild(viewToAdd as Sprite);
        _currentViewOnStage = viewToAdd;
    }
}
}
