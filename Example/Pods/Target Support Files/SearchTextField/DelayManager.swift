//
//  DelayManager.swift
//  SearchTextField
//
//  Created by Tsimafei Harhun on 1/14/20.
//

import Foundation

class DelayManager {
    
    var isCancel = false
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            if !self.isCancel {
                completion()
            }
        }
    }
    
    deinit {
        isCancel = true
    }
}
