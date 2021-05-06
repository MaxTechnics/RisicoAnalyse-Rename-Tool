//
//  Counters.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 03/05/2021.
//

import Foundation

class CounterManager {
    var bordNr: Int = 1;
    var closedCount: Int = 2;
    var openCount: Int = 3;
    var openMCCount: Int = 4;
    var openZCCount: Int = 5;
    var infoCount: Int = 6;
    var riskCount: Int = 7;
    
    func incrementCounter(counter: String) {
        print("incrementation")
        switch counter {
        case "board":
//            bordNr = bordNr + 1;
            //print("incremented board to \(bordNr)")
            AppDelegate().updateCounters()
            break;
        case "closed":
            closedCount += 1;
            break;
        case "openplain":
            openCount += 1;
            break;
        case "openMC":
            openMCCount += 1;
            break;
        case "openZC":
            openZCCount += 1;
            break;
        case "info":
            infoCount += 1;
            break;
        case "risk":
            riskCount += 1;
            break;
        default:
            // This is basically an error
            return;
        }
        
    }
    
    func resetCounters() {
        closedCount = 0;
        openCount = 0;
        openMCCount = 0;
        openZCCount = 0;
        infoCount = 0;
        riskCount = 0;
    }
}
