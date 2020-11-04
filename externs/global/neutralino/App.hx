package global.neutralino;

@:native("Neutralino.app") @valueModuleOnly extern class App {
	static function exit(success:(data:Dynamic) -> Void, fail:() -> Void):Void;
}