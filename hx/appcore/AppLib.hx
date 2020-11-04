package appcore;

import haxe.Json;
import global.Neutralino;
import js.Browser.*;

class AppLib {
	public function new() {
		// your code
	}

	public function showSettings() {
		global.neutralino.Settings.getSettings((data) -> {
			window.alert(Json.stringify(data));
		}, () -> {});
	}
}
