//
//  ColorPickerVC.swift
//  Color-magic-protocols
//
//  Created by Himmat Singh on 11/3/20.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil {
            delegate?.userDidChose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
        
    }

}
