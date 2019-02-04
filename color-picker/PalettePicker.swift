//
//  PalettePicker.swift
//  color-picker
//
//  Created by Sayooj Sojen on 01/02/19.
//  Copyright © 2019 Travancore Analytics. All rights reserved.
//

import UIKit

class PalettePicker: UIViewController {
	
	var delegateObj: ColorTransferDelegate?=nil //a protocol/delegate var initialised as nil, as we only need to instantiate this delegate when controller segues into this view

    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	@IBAction func colorBtnOnPress(sender: UIButton){ //to assign a single IBAction func to multiple buttons, pass a var sender of type `UIButton` to the func and then link it

		delegateObj?.colorOnPick(color: sender.backgroundColor!, colorText: sender.titleLabel!.text!)
		self.navigationController?.popViewController(animated: true)
		
		//var delegateObj of type protocol is declared and initialized as nil in view 2
		//In view 1 a variable is assigned with force casting (as!) the class of the segue destination(which is this class)
		//through that view 1 variable, the delegateObj here is accessed, and a self instance of the viewcontroller class of view 1 is assigned to delegateObj(this works as view 1 implements the protocol as well)
		//a definition is made of the protocol in view 1, which makes use of protperties of view 1, along with properteis of view 2 passed as parametres through a call in view 2
		
    }

}
