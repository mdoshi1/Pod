//
//  PodTitleViewController.swift
//  Pod
//
//  Created by Max Freundlich on 5/24/17.
//  Copyright © 2017 cs194. All rights reserved.
//

import UIKit
import TextFieldEffects
class PodTitleViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    var textField: HoshiTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField = HoshiTextField(frame: CGRect(x: questionLabel.frame.minX, y: questionLabel.frame.maxY + 8, width: self.view.frame.width - 2*questionLabel.frame.minX , height: 60))
        textField.placeholder = "Pod Name"
        textField.placeholderColor = .white
        textField.font = UIFont.systemFont(ofSize: 22)
        textField.textColor = .white
        textField.placeholderFontScale = 1.0
        textField.borderActiveColor = .white
        textField.borderInactiveColor = .white
        self.view.addSubview(textField)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        self.view.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "toPrivacyScene"){
            if let nextVC = segue.destination as? PodPrivacyViewController {
                nextVC.podTitle = textField.text!
            }
        }
    }

    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
