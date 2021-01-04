//
//  CheckLanguageViewController.swift
//  DemoTextField
//
//  Created by MBA0052 on 12/31/20.
//

import UIKit
import NaturalLanguage

class CheckLanguageViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.layer.borderWidth = 1
        inputTextField.delegate = self
    }
    
    @IBAction func buttonTouchUpInside(_ sender: Any) {
        checkJapanLanguage()
    }
    
    func checkJapanLanguage(){
        let undefinedDetectedLanguage = detectedLanguage(string: inputTextField.text ?? "")
        if undefinedDetectedLanguage == "Japanese" {
            print("input text is japaness")
        } else {
            print("input text isn't japaness")
        }
    }
    func detectedLanguage(string: String) -> String {
        let recognizer = NLLanguageRecognizer()
        recognizer.processString(string)
        guard let languageCode = recognizer.dominantLanguage?.rawValue else { return "" }
        let detectedLanguage = Locale.current.localizedString(forIdentifier: languageCode)
        return detectedLanguage ?? ""
    }
}

extension CheckLanguageViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let inputText = detectedLanguage(string: string)
        print(string)
        if inputText == "Japanese" {
            return false
        }
        return true
    }
}
