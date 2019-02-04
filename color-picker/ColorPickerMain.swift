//
//  ColorPickerMain.swift
//  color-picker
//
//  Created by Sayooj Sojen on 01/02/19.
//  Copyright © 2019 Travancore Analytics. All rights reserved.
//

import UIKit

class ColorPickerMain: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    
	override func viewDidLoad() {
        super.viewDidLoad()
	
	}

	func colorOnPick(color: UIColor, colorText: String) {
		view.backgroundColor=color
		colorLabel.text=colorText
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //this function does the actions requirred when the controller moves/segues away from this view to another view specified by the for segue ID
		
		if segue.identifier=="mainToPicker"{ //we have to manually provide the identifier by clicking on the segue link. segue properties can be used to grab segue
			let toPalettePicker=segue.destination as! PalettePicker // as! SomeClass is a contract, it basically says "I guarantee that this thing is an instance of SomeClass". If it turns out that it isn't SomeClass then an exception will be thrown because you violated the contract.
			toPalettePicker.delegateObj=self
			
		}
		
		
		
	}


}

