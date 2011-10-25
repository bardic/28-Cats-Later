/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.view.intro.component {
import com.bit101.components.PushButton;
import com.theredspace.view.IView;

import flash.display.Sprite;
import flash.text.TextField;

public class IntroView extends Sprite implements IView{
    public var gameButton:PushButton;
    public function IntroView() {
        var tf:TextField = new TextField();
        tf.text = "Intro View";
        addChild(tf);

        gameButton = new PushButton(this,0,30,"Game");
    }
}
}
