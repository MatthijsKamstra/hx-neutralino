package global.neutralino;

@:native("Neutralino.filesystem") @valueModuleOnly extern class Filesystem {
	static function createDirectory(dirName:String, success:(data:Dynamic) -> Void, fail:() -> Void):Void;
	static function removeDirectory(dirName:String, success:(data:Dynamic) -> Void, fail:() -> Void):Void;
	static function readDirectory(dirName:String, success:(data:DirectoryData) -> Void, fail:() -> Void):Void;
	static function writeFile(filename:String, content:String, success:(data:SuccessData) -> Void, fail:() -> Void):Void;
	static function readFile(filename:String, success:(data:Dynamic) -> Void, fail:() -> Void):Void;
	static function removeFile(filename:String, success:(data:SuccessData) -> Void, fail:() -> Void):Void;
}