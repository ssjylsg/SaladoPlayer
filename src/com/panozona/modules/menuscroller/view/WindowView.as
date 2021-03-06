/*
Copyright 2012 Marek Standio.

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
along with SaladoPlayer. If not, see <http://www.gnu.org/licenses/>.
*/
package com.panozona.modules.menuscroller.view{
	
	import com.panozona.modules.menuscroller.model.MenuScrollerData;
	import com.panozona.modules.menuscroller.model.WindowData;
	import flash.display.Sprite;
	
	public class WindowView extends Sprite{
		
		private var _closeView:CloseView;
		private var _scrollerView:ScrollerView;
		
		private var window:Sprite;
		
		private var _menuScrollerData:MenuScrollerData;
		
		public function WindowView(menuScrollerData:MenuScrollerData) {
			
			_menuScrollerData = menuScrollerData;
			
			this.alpha = _menuScrollerData.windowData.window.alpha;
			
			window = new Sprite();
			addChild(window);
			visible = _menuScrollerData.windowData.open;
			
			_scrollerView = new ScrollerView(_menuScrollerData, window);
			window.addChild(_scrollerView);
			
			_closeView = new CloseView(_menuScrollerData);
			window.addChild(_closeView);
		}
		
		public function get windowData():WindowData {
			return _menuScrollerData.windowData;
		}
		
		public function get scrollerView():ScrollerView {
			return _scrollerView;
		}
		
		public function get closeView():CloseView {
			return _closeView;
		}
		
		public function drawBackground():void {
			window.graphics.clear()
			window.graphics.beginFill(_menuScrollerData.scrollerData.scroller.style.color, _menuScrollerData.scrollerData.scroller.style.alpha);
			window.graphics.drawRect(0, 0, _menuScrollerData.windowData.currentSize.width, _menuScrollerData.windowData.currentSize.height);
			window.graphics.endFill();
		}
	}
}