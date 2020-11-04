//
//  ColorPresenterVC.swift
//  Color-magic-protocols
//
//  Created by Himmat Singh on 11/3/20.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func userDidChose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC"{
            guard let colorPickerVC = segue.destination as?
                    ColorPickerVC else {return}
            colorPickerVC.delegate = self
        }
    }
 
}

