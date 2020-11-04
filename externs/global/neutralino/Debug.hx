package global.neutralino;

@:native("Neutralino.debug") @valueModuleOnly extern class Debug {
	static function log(logType:LogType, message:String, success:(data:LogSuccessData) -> Void, fail:() -> Void):Void;
}