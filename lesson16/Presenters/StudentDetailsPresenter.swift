//
//  StudentDetailsViewController.swift
//  testtt
//
//  Created by Volodymyr Rykhva on 07.07.2021.
//

import UIKit

protocol StudentInfoProtocol: AnyObject {
    func showInfo(data: Student?)
}


final class StudentDetailsPresenter {

    private weak var userView: StudentInfoProtocol?

    private var student: Student?


    // MARK: - Private

    func delegateStudentsInfo(student : Student?){
        
        self.student = student
        self.userView?.showInfo(data: student)
    }
}
