//
//  ColorTransferDelegate.swift
//  color-picker
//
//  Created by Sayooj Sojen on 01/02/19.
//  Copyright © 2019 Travancore Analytics. All rights reserved.
//


import UIKit


protocol ColorTransferDelegate {
	func colorOnPick(color: UIColor, colorText: String)
}
