package global.neutralino;

typedef SettingsData = {
	var appname : String;
	@:optional
	var appport : String;
	@:optional
	var mode : String;
	@:optional
	var cloud : {
		@:optional
		var blacklist : Array<String>;
	};
	@:optional
	var globals : { };
	@:optional
	var window : {
		@:optional
		var title : String;
		@:optional
		var width : String;
		@:optional
		var height : String;
		@:optional
		var fullscreen : Bool;
		@:optional
		var alwaysontop : Bool;
		@:optional
		var iconfile : String;
		@:optional
		var enableinspector : Bool;
		@:optional
		var borderlesswindow : Bool;
	};
};