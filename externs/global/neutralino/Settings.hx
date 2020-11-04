package global.neutralino;

@:native("Neutralino.settings") @valueModuleOnly extern class Settings {
	static function getSettings(success:(data:SettingsData) -> Void, fail:() -> Void):Void;
}