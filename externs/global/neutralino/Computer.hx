package global.neutralino;

@:native("Neutralino.computer") @valueModuleOnly extern class Computer {
	static function getRamUsage(success:(data:RamData) -> Void, fail:() -> Void):Void;
}