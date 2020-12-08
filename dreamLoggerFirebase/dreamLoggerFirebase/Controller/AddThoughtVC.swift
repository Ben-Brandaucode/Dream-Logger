//
//  AddThoughtVC.swift
//  dreamLoggerFirebase
//
//  Created by Ben Brandau Brandau on 12/7/20.
//

import UIKit

class AddThoughtVC: UIViewController {
    
    // outlets
    
    
    @IBOutlet weak var categorySegment: UISegmentedControl!
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var thoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    //ViewLifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }

    @IBAction func categoryChanged(_ sender: Any) {
        
    }
    @IBAction func postBtnTapped(_ sender: Any) {
        
    }
    
    func configureView(){
        postBtn.layer.cornerRadius = 4
        thoughtTxt.layer.cornerRadius = 4
        
        
    }
}
