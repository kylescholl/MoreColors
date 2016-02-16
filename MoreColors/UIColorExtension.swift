//
//  Custom Colors.swift
//  Scheduler
//
//  Created by Kyle Scholl on 2/10/16.
//  Copyright © 2016 Patronus LLC. All rights reserved.
//

import UIKit

extension UIColor {
	class func hexColor(hexColorCode: String, alpha: Float = 1.0) -> UIColor {
		let scanner = NSScanner(string: hexColorCode)
		var color: UInt32 = 0
		scanner.scanHexInt(&color)
		
		let mask = 0x000000FF
		let r = CGFloat(Float(Int(color >> 16) & mask) / 255.0)
		let g = CGFloat(Float(Int(color >> 8)  & mask) / 255.0)
		let b = CGFloat(Float(Int(color)       & mask) / 255.0)
		
		return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
	}
	
	//	Here are just a few examples of additional
	//  custom colors that you can use.
	//
	//	
	//
	
	class func turquoiseColor() -> UIColor {
		return hexColor("1ABC9C")
	}

	class func greenSeaColor() -> UIColor {
		return hexColor("16A085")
	}
	
	class func emeraldColor() -> UIColor {
		return hexColor("2ECC71")
	}
	
	class func nephritisColor() -> UIColor {
		return hexColor("27AE60")
	}
	
	class func peterRiverColor() -> UIColor {
		return hexColor("3498DB")
	}
	
	class func belizeHoleColor() -> UIColor {
		return hexColor("2980B9")
	}
	
	class func amethystColor() -> UIColor {
		return hexColor("9B59B6")
	}
	
	class func wisteriaColor() -> UIColor {
		return hexColor("8E44AD")
	}

	class func wetAsphaltColor() -> UIColor {
		return hexColor("34495E")
	}

	class func midnightBlueColor() -> UIColor {
		return hexColor("2C3E50")
	}
	
	class func sunflowerColor() -> UIColor {
		return hexColor("F1C40F")
	}
	
	class func tangerineColor() -> UIColor {
		return hexColor("F39C12")
	}

	class func carrotColor() -> UIColor {
		return hexColor("E67E22")
	}

	class func pumpkinColor() -> UIColor {
		return hexColor("D35400")
	}

	class func alizarinColor() -> UIColor {
		return hexColor("E74C3C")
	}

	class func pomegranateColor() -> UIColor {
		return hexColor("C0392B")
	}
	
	class func cloudsColor() -> UIColor {
		return hexColor("ECF0F1")
	}
	
	class func silverColor() -> UIColor {
		return hexColor("BDC3C7")
	}
	
	class func concreteColor() -> UIColor {
		return hexColor("95A5A6")
	}
	
	class func asbestosColor() -> UIColor {
		return hexColor("7F8C8D")
	}

	class func sexyBlue() -> UIColor {
		return hexColor("0080FF")
	}

	/*
	class func blendedColorWithForegroundColor(var foregroundColor: UIColor, var backgroundColor: UIColor, percentBlend: CGFloat) {
		var onRed, offRed, newRed, onGreen, offGreen, newGreen, onBlue, offBlue, newBlue, onWhite, offWhite : CGFloat
		//let onMix = getRed(onRed, onGreen, onBlue, nil)
		if (foregroundColor = getRed(onRed)) {
			foregroundColor = getWhite(onWhite, nil)
			onRed = onWhite
			onBlue = onWhite
			onGreen = onWhite
		}
		if (backgroundColor = getRed(&offRed, green: &offGreen, blue: &offBlue, alpha: nil)) {
			backgroundColor = getWhite(offWhite, alpha: nil)
			offRed = offWhite
			offBlue = offWhite
			offGreen = offWhite
		}
		newRed = onRed * percentBlend + offRed * (1 - percentBlend)
		newGreen = onGreen * percentBlend + offGreen * (1 - percentBlend)
		newBlue = onBlue * percentBlend + offBlue * (1 - percentBlend)
		return UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
	}
	*/
}





