package global.neutralino;

typedef InitOptions = {
	dynamic function load():Void;
	dynamic function pingSuccessCallback():Void;
	dynamic function pingFailCallback():Void;
};