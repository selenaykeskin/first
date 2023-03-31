//
//  ViewModel.swift
//  First
//
//  Created by FurkiSelos on 22.03.2023.
//

import Foundation

protocol ViewModelProtocol {
    func countCycle() -> Int
    func reloadCycle() -> Bool
}

class ViewModel: ViewModelProtocol{
    
    private var count: Int = 0
    
    func countCycle() -> Int {
        count += 1
        if reloadCycle() {
            count -= 1
        }
        return count
    }
    
    func reloadCycle() -> Bool {
        if count == 10 {
            return true
        }else {
            return false
        }
    }

}
