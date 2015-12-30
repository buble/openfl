package openfl.desktop; #if !openfl_legacy


@:enum abstract ClipboardTransferMode(Int) {
	
	public var CLONE_ONLY = 0;
	public var CLONE_PREFERRED = 1;
	public var ORIGINAL_ONLY = 2;
	public var ORIGINAL_PREFERRED = 3;
	
	@:from private static inline function fromString (value:String):ClipboardTransferMode {
		
		return switch (value) {
			
			case "cloneOnly": CLONE_ONLY;
			case "clonePreferred": CLONE_PREFERRED;
			case "originalOnly": ORIGINAL_ONLY;
			default: return ORIGINAL_PREFERRED;
			
		}
		
	}
	
	@:to private static inline function toString (value:Int):String {
		
		return switch (value) {
			
			case ClipboardTransferMode.CLONE_ONLY: "cloneOnly";
			case ClipboardTransferMode.CLONE_PREFERRED: "clonePreferred";
			case ClipboardTransferMode.ORIGINAL_ONLY: "originalOnly";
			default: "originalPreferred";
			
		}
		
	}
	
}


#end