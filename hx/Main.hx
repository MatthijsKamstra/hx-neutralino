package;

import global.IndexGlobal.*;
import global.Neutralino;
import appcore.AppLib;
import js.Browser.*;

// import Webpack.*;
class Main {
	// @:keep static var STYLES = require('./App.css');
	// static var STYLES = require('./Foo.css');
	// static var IMG = require('./bug.png');
	// static var CONFIG = require('../config.json');
	public function new() {
		trace('Main');

		// js.Lib.require('test');

		// Syntax.code("import './App.css';");

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

		Dom.body().appendChild(Dom.html('<h1>Welcome to Webpack + haxe</h1>'));

		// var foo = new com.Foo();
		// Dom.body().appendChild(foo.view);
	}

	static public function main() {
		var app = new Main();
	}
}
