//
//  Spinner.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 03/05/2021.
//

import Foundation

class SpinnerManager {
    func showSpinner() {
        //AppDelegate().loadingSpinner.startAnimation(self);
        
    }
    
    func hideSpinner() {
        AppDelegate().loadingSpinner.startAnimation(self)
    }
    
}
