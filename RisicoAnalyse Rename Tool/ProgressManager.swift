//
//  ProgressManager.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 06/05/2021.
//

import Foundation

class ProgressManager {
    var currentImage: Int = 1048;
    var totalImages: Int = 1048; //static while testing
    
    func updateProgressBar() {
        // The bar has a value between 0 and the amount of images.
        
        AppDelegate().progressBar.maxValue = Double(totalImages);
        AppDelegate().progressBar.doubleValue = Double(currentImage);
        AppDelegate().progressBar.controlTint = .graphiteControlTint;
        
        AppDelegate().progressLabel.stringValue = "Progress: \(currentImage)/\(totalImages)";
        
    }
}
