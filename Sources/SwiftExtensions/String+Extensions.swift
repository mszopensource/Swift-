//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

import Foundation
import UIKit

extension String {
    
    /*
     文字列を渡してシンプルなUIAlertControllerを表示する。
     Show a simple UIAlertController with the given string.
     */
    func showSimpleAlert(on: UIViewController?) {
        guard let onVC = on else { return }
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "アラート", message: self, preferredStyle: .alert)
            let actionDismiss = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
            alert.addAction(actionDismiss)
            onVC.present(alert, animated: true, completion: nil)
        }
    }
    
    func アラートを表示(on: UIViewController?) {
        showSimpleAlert(on: on)
    }
    
}
