package example
{
	import flash.display.MovieClip;
	import Bezel.BezelMod;
	import Bezel.Logger;
	import Bezel.Bezel;
	
	/**
	 * ...
	 * @author Chris
	 */
	public class ExampleMod extends MovieClip implements BezelMod
	{
		// Name of the mod. This should be unique to your mod!
		public function get MOD_NAME():String { return "ExampleMod"; }
		// Version of Bezel this mod was built for.
		// Bezel will not load mods that were built for a different major version (first number) or a newer minor version (second number) than was installed!
		public function get BEZEL_VERSION():String { return "2.0.1"; }
		// Version of the mod.
		public function get VERSION():String { return "0.0.1"; }
		
		public static var logger:Logger;
		
		public function ExampleMod()
		{
			logger = Logger.getLogger("ExampleMod");
		}
		
		public function bind(loader:Bezel, gameObjects:Object):void
		{
			logger.log("bind", "ExampleMod bound!");
		}
		
		public function unload():void
		{
			logger.log("bind", "ExampleMod unloading!");
		}
	}
	
}
