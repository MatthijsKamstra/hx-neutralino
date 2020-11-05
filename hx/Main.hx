package;

import js.Syntax;
import global.IndexGlobal.*;
import global.Neutralino;
import appcore.AppLib;
import js.Browser.*;

class Main {
	@:keep static var STYLES = js.Lib.require('./App.css');

	public function new() {
		trace('Main');

		// js.Lib.require('test');

		// Syntax.code("import './m ycss2.css';");

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
