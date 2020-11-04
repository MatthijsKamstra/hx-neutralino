package global.neutralino;

@:native("Neutralino.os") @valueModuleOnly extern class Os {
	static function runCommand(command:String, success:(data:StdoutData) -> Void, fail:() -> Void):Void;
	static function getEnvar(key:String, success:(data:ValueData) -> Void, fail:() -> Void):Void;
	static function dialogOpen(title:String, success:(data:FileData) -> Void, fail:() -> Void):Void;
	static function dialogSave(title:String, success:(data:FileData) -> Void, fail:() -> Void):Void;
}