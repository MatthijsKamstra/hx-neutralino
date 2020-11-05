package appcore;

import haxe.Json;
import global.neutralino.*;
import js.Browser.*;

class AppLib {
	public function new() {}

	public function showSettings() {
		Settings.getSettings((data) -> {
			window.alert(Json.stringify(data));
		}, () -> {});
	}
}
