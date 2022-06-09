//
//  ViewController.swift
//  SampleApplication
//
//  Created by mac on 09/06/22.
//

import UIKit
import SwiftDictionaryCoding

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.decodeDictionary()
        }
    }

    private func decodeDictionary() {
        let result: [String: Any] = ["maths": 70,
                                     "science": 99]
        let dict: [String: Any] = ["empId": 7,
                                   "results": result,
                                   "empName": "Christofer",
                                   "department": "Sales"]
        let decoder = DictionaryDecoder()
        do {
            let event = try decoder.decode(EmployeeModel.self, from: dict)
            print (event)
        } catch let err {
            print(err)
        }
        
        
    }
}

