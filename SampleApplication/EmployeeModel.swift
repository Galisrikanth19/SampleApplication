//
//  EmployeeModel.swift
//  SampleApplication
//
//  Created by mac on 09/06/22.
//

import Foundation

struct EmployeeModel: Codable {
    let empId: Int?
    let empName: String?
    let department: String?
    let results: ResultsModel?
}

struct ResultsModel: Codable {
    let maths: Int?
    let science: Int?
}
