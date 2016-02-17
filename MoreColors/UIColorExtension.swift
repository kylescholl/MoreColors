// CustomColors.swift
//
// Copyright © 2016 Patronus LLC. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

extension UIColor {
	//  This function allows users to translate a HEX color code into a UIColor
	class func hexToUI(hexColorCode: String, alpha: Float = 1.0) -> UIColor {
		
		let hexColorCodeString: String = String(hexColorCode)
		let searchCharacter: Character = "#"
		
		if hexColorCodeString.characters.contains(searchCharacter) {
			
			let original          = hexColorCode
			let newHexColorCode   = String(original.characters.dropFirst())
			
			let scanner       = NSScanner(string: newHexColorCode)
			var color: UInt32 = 0
			scanner.scanHexInt(&color)
			
			let mask = 0x000000FF
			let r = CGFloat(Float(Int(color >> 16) & mask) / 255.0)
			let g = CGFloat(Float(Int(color >> 8)  & mask) / 255.0)
			let b = CGFloat(Float(Int(color)       & mask) / 255.0)
			
			return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
			
		} else {
			
			let scanner = NSScanner(string: hexColorCode)
			var color: UInt32 = 0
			scanner.scanHexInt(&color)
			
			let mask = 0x000000FF
			let r = CGFloat(Float(Int(color >> 16) & mask) / 255.0)
			let g = CGFloat(Float(Int(color >> 8)  & mask) / 255.0)
			let b = CGFloat(Float(Int(color)       & mask) / 255.0)
			
			return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
		}
	}
	
	//	Here are just a few examples of additional
	//  custom colors that you can use.
	//
	//	You can delete any or all of these 
	//  if you want.
	
	class func turquoiseColor() -> UIColor {
		return hexToUI("1ABC9C")
	}

	class func greenSeaColor() -> UIColor {
		return hexToUI("16A085")
	}
	
	class func emeraldColor() -> UIColor {
		return hexToUI("2ECC71")
	}
	
	class func nephritisColor() -> UIColor {
		return hexToUI("27AE60")
	}
	
	class func peterRiverColor() -> UIColor {
		return hexToUI("3498DB")
	}
	
	class func belizeHoleColor() -> UIColor {
		return hexToUI("2980B9")
	}
	
	class func amethystColor() -> UIColor {
		return hexToUI("9B59B6")
	}
	
	class func wisteriaColor() -> UIColor {
		return hexToUI("8E44AD")
	}

	class func wetAsphaltColor() -> UIColor {
		return hexToUI("34495E")
	}

	class func midnightBlueColor() -> UIColor {
		return hexToUI("2C3E50")
	}
	
	class func sunflowerColor() -> UIColor {
		return hexToUI("F1C40F")
	}
	
	class func tangerineColor() -> UIColor {
		return hexToUI("F39C12")
	}

	class func carrotColor() -> UIColor {
		return hexToUI("E67E22")
	}

	class func pumpkinColor() -> UIColor {
		return hexToUI("D35400")
	}

	class func alizarinColor() -> UIColor {
		return hexToUI("E74C3C")
	}

	class func pomegranateColor() -> UIColor {
		return hexToUI("C0392B")
	}
	
	class func cloudsColor() -> UIColor {
		return hexToUI("ECF0F1")
	}
	
	class func silverColor() -> UIColor {
		return hexToUI("BDC3C7")
	}
	
	class func concreteColor() -> UIColor {
		return hexToUI("95A5A6")
	}
	
	class func asbestosColor() -> UIColor {
		return hexToUI("7F8C8D")
	}

	class func lightBlue() -> UIColor {
		return hexToUI("0080FF")
	}
}