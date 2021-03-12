//
//  ViewController.swift
//  Task5
//
//  Created by 野村大悟 on 2021/03/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var resultLabel: UILabel!

    private func alert(message: String) {
        let alertController = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    @IBAction private func calculation(_ sender: Any) {
        guard let text1 = textField1.text else { return }
        guard let text2 = textField2.text else { return }

        guard let leftNum = Double(text1) else {
            alert(message: "割られる数を入力して下さい！")
            return
        }

        guard let rightNum = Double(text2) else {
            alert(message: "割る数を入力してください！")
            return
        }

        guard rightNum != 0 else {
            alert(message: "割る数には0を入力しないでください")
            return
        }

        resultLabel.text = String(leftNum / rightNum)
    }
}
