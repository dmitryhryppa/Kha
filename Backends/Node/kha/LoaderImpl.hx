package kha;

import js.Boot;
import js.Browser;
import js.Error;
import js.html.audio.DynamicsCompressorNode;
import js.html.ImageElement;
import js.Node;
import js.node.Buffer;
import js.node.Fs;
import kha.FontStyle;
import kha.Blob;
import kha.graphics4.TextureFormat;
import kha.Image;
import kha.Kravur;
import haxe.io.Bytes;
import haxe.io.BytesData;
import js.Lib;
import js.html.XMLHttpRequest;

class LoaderImpl {
	public static function loadMusicFromDescription(desc: Dynamic, done: kha.Music -> Void) {
		Node.setTimeout(function () {
			done(new Music());
		}, 0);
	}
	
	public static function loadSoundFromDescription(desc: Dynamic, done: kha.Sound -> Void): Void {
		Node.setTimeout(function () {
			done(new Sound());
		}, 0);
	}		
	
	public static function loadImageFromDescription(desc: Dynamic, done: kha.Image -> Void) {
		Node.setTimeout(function () {
			done(new Image(100, 100, TextureFormat.RGBA32));
		}, 0);
	}

	public static function loadVideoFromDescription(desc: Dynamic, done: kha.Video -> Void): Void {
		Node.setTimeout(function () {
			done(new Video());
		}, 0);
	}
	
	public static function loadBlobFromDescription(desc: Dynamic, done: Blob -> Void) {
		Fs.readFile(desc.files[0], function (error: Error, data: Buffer) {
			done(Blob.fromBuffer(data));
		});
	}
}
