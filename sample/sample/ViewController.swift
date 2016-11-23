//
//  ViewController.swift
//  sample
//
//  Created by Shravan on 11/21/16.
//  Copyright © 2016 Practice. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //use outlets to programmatically interact with our interface elements
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //we use the delegate field of our text field to programmatically hide the keyboard when the user presses anywhere else on the screen or hits return
        self.textField.delegate = self
        //align the label text to the center
        label.textAlignment = NSTextAlignment.Center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //set the label text to our text field's text using a button
    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = textField.text
    }
    
    //these last two functions close the keyboard when a user hits the return key or taps anywhere on the screen
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

}

