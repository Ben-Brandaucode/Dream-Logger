//
//  AddThoughtVC.swift
//  dreamLoggerFirebase
//
//  Created by Ben Brandau Brandau on 12/7/20.
//

import UIKit
import Firebase



class AddThoughtVC: UIViewController, UITextViewDelegate {
    
    // Outlets
    
    
    @IBOutlet weak var categorySegment: UISegmentedControl!
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var thoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    // variables
    private var selectedCategory =  ThoughtCategory.funny.rawValue
    
    //ViewLifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }

    @IBAction func categoryChanged(_ sender: Any) {
        switch categorySegment.selectedSegmentIndex {
            case 0 :
            selectedCategory = ThoughtCategory.funny.rawValue
            case 1 :selectedCategory = ThoughtCategory.serious.rawValue
      
            default:
                selectedCategory = ThoughtCategory.crazy.rawValue
        }
        
    }
    @IBAction func postBtnTapped(_ sender: Any) {
        guard let username = usernameTxt.text else { return }
        Firestore.firestore().collection("thoughts").addDocument(data: [
            CATEGORY : selectedCategory,
            NUM_COMMENTS: 0,
            NUM_LIKES : 0,
            THOUGHT_TXT : thoughtTxt.text,
            TIMESTAMP: FieldValue.serverTimestamp(),
            USERNAME: username
        ]) { (err) in
            if let err = err {
                debugPrint("error adding Document \(err)")
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    func configureView(){
        postBtn.layer.cornerRadius = 4
        thoughtTxt.layer.cornerRadius = 4
        thoughtTxt.text = "my random Thought"
        thoughtTxt.textColor = UIColor.gray
        thoughtTxt.delegate = self
        
        
    }
}
