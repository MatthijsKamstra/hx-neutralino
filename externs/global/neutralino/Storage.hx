package global.neutralino;

@:native("Neutralino.storage") @valueModuleOnly extern class Storage {
	static function putData(data:StoragePutData, success:() -> Void, fail:() -> Void):Void;
	static function getData(key:String, success:(data:Dynamic) -> Void, fail:() -> Void):Void;
}