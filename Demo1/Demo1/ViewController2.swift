import UIKit

protocol ViewController2Delegate {
    func textFromB(text: String)
}

class ViewController2: UIViewController {
    @IBOutlet weak var textFiel: UITextField!
    var delegate: ViewController2Delegate?
    var callBackTextToA: ((_ name: String) -> Void)?
    var textFromA = ""
    
    override func viewDidLoad() {
        textFiel.text = textFromA
    }
    
    @IBAction func moteToA(_ sender: Any) {
        // ko the 1 con tro ler A, gan text cho a
//        let vcA = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerA") as? ViewController
//
        // 1 delegate,
        // 2 callback
        delegate?.textFromB(text: textFiel.text ?? "")
//        callBackTextToA?(textFiel.text ?? "")
        self.dismiss(animated: true)
    }
    
}


//
//class A {
//    var text: String
//}
//
//let objA = A()
//objA.text = "asdlkjasokdj"
