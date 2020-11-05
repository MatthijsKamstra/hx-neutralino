package com;

import js.html.Element;
import Webpack.*;

class Foo {
	@:keep static var STYLES = require('./Foo.css');

	// @:keep static var IMG = require('./bug.png');
	@:keep static var CONFIG = require('../config.json');

	public var view:Element;

	public function new() {
		// <img src="$IMG"/>
		view = Dom.html('
		    <div class="foo">
				${CONFIG.hello}
		    </div>
		');
	}
}
