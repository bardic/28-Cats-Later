/**
 * User: TJ Gillis
 * Email: bardic.knowledge@gmail.com
 * Date: 10/24/11
 */
package com.theredspace.controller {
import org.osflash.signals.Signal;

public class ChangeViewSignal extends Signal{
    public function ChangeViewSignal() {
        super(String);
    }
}
}
