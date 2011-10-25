/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.view.game.component {
import com.theredspace.view.IView;

import flash.display.Sprite;
import flash.text.TextField;

public class GameView extends Sprite implements IView{
    public function GameView() {
        var tf:TextField = new TextField();
        tf.text = "Game View";
        addChild(tf);
    }
}
}
