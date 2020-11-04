package;

import js.Syntax;
import global.IndexGlobal.*;
import global.Neutralino;
import appcore.AppLib;
import js.Browser.*;

class Main {
	public function new() {
		trace('Main');

		// Syntax.code("import './mycss2.css';");

		var appLib = new AppLib();

		Neutralino.init({
			load: function() {
				this.myfunction();
				appLib.showSettings();
			},

			pingSuccessCallback: function() {},
			pingFailCallback: function() {}
		});
	}

	function myfunction() {
		document.getElementById('info')
			.innerHTML = "haxe - "
				+ NL_NAME
				+ " is running on port "
				+ NL_PORT
				+ " inside "
				+ NL_OS
				+ "<br/><br/>"
				+ "<span>v"
				+ NL_VERSION
				+ "</span>";
	}

	static public function main() {
		var app = new Main();
	}
}
