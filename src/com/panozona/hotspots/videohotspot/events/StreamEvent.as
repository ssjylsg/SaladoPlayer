/*
Copyright 2010 Marek Standio.

This file is part of SaladoPlayer.

SaladoPlayer is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published 
by the Free Software Foundation, either version 3 of the License, 
or (at your option) any later version.

SaladoPlayer is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty 
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with SaladoPlayer.  If not, see <http://www.gnu.org/licenses/>.
*/
package com.panozona.hotspots.videohotspot.events{
	
	import flash.events.Event;
	
	public class StreamEvent extends Event {
		
		public static const CHANGED_STREAM_STATE:String = "chngdStreamState";
		public static const CHANGED_BYTES_LOADED:String = "chngdBytesLoaded";
		public static const CHANGED_VIEW_TIME:String = "chngdViewTime";
		public static const CHANGED_SEEK_TIME:String = "chngdSeekTime";
		public static const CHANGED_IS_BUFFERING:String = "chngdIsBuffering";
		public static const CHANGED_VOLUME_VALUE:String = "chngdVolumeValue";
		
		public function StreamEvent(type:String) {
			super(type);
		}
	}
}