package alternterrain.util 
{
	import flash.display.BitmapData;
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author Glenn Ko
	 */
	public class BitmapDataReadWrite 
	{
		static public function writeSquareBmpData(byteArray:ByteArray, bitmapData:BitmapData):void 
		{
			var across:int = bitmapData.width;
		
			for (var y:int = 0; y < across; y++) {
				for (var x:int = 0; x < across; x++) {
					byteArray.writeByte((bitmapData.getPixel(x, y) & 0xFF0000) >> 16 );
					byteArray.writeByte( (bitmapData.getPixel(x, y) & 0xFF00) >> 8 );
					byteArray.writeByte( (bitmapData.getPixel(x, y) & 0xFF) );
				}
			}
		}
		
		static public function writeSquareBmpDataGrayscale(byteArray:ByteArray, bitmapData:BitmapData):void 
		{
			var across:int = bitmapData.width;
		
			for (var y:int = 0; y < across; y++) {
				for (var x:int = 0; x < across; x++) {
					byteArray.writeByte( bitmapData.getPixel(x, y) & 0xFF );
				}
			}
		}
		
		
	}

}