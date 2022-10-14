//
//  ViewController.swift
//  exercise01
//
//  Created by Darshan Jain on 2022-10-13.
//

import UIKit

class HomeScreen: UIViewController {

	@IBOutlet weak var changeBgColor: UIButton!
	
	@IBOutlet weak var hintLabel: UILabel!{
		didSet{
			hintLabel.sizeToFit()
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	
	@IBAction func onChangeBgColorPress(_ sender: Any) {
		let redColor: CGFloat = CGFloat.random(in: 0...1)
		let greenColor: CGFloat = CGFloat.random(in: 0...1)
		let blueColor: CGFloat = CGFloat.random(in: 0...1)
		
		let randomBgColor = UIColor( red: redColor, green: greenColor, blue: blueColor, alpha: 1 )
		view.backgroundColor = randomBgColor
		
		let randomTextColor = UIColor( red: 1.0 - redColor, green: 1.0 - greenColor, blue: 1.0 - blueColor, alpha: 1 )
		
		hintLabel.textColor = randomTextColor
	}
}

