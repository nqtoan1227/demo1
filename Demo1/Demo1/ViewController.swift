//
//  ViewController.swift
//  Demo1
//
//  Created by Quốc Toàn Nguyễn on 01/04/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var caculatorButton: UIButton!
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField1.clearsOnInsertion = true
    }

    @IBAction func caculatorButtonAction(_ sender: Any) {
        let controler2VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        controler2VC.textFromA = textField1.text ?? ""
        controler2VC.delegate = self
//        controler2VC.callBackTextToA = { textFormB in
//            self.textField2.text = textFormB
//        }
        
        self.present(controler2VC, animated: true)
    }
    
    private func test1() {
//        aslkdjoasjd
    }
}

extension ViewController: ViewController2Delegate {
    func textFromB(text: String) {
        textField2.text = text
    }
}
