//
//  CounterWindowManager.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 04/05/2021.
//

import Cocoa
class counterWindow: NSWindowController, NSWindowDelegate {
//    @IBOutlet weak var counterWindow: NSWindow!
    
    // Window controls
    @IBOutlet weak var doneButton: NSButton!
    @IBOutlet weak var cancelButton: NSButton!
    
    @IBOutlet weak var clearFieldsBtn: NSButton!
    
    // Text Fields
    @IBOutlet weak var boardCounterBox: NSTextField!
    @IBOutlet weak var closedCounterBox: NSTextField!
    @IBOutlet weak var openCounterBox: NSTextField!
    @IBOutlet weak var openMCCounterBox: NSTextField!
    @IBOutlet weak var openZCCounterBox: NSTextField!
    @IBOutlet weak var infoCounterBox: NSTextField!
    @IBOutlet weak var riskCounterBox: NSTextField!
    
    @IBAction func saveAndClose(_ sender: NSButton) {
        setItems()
        clearFields()
        self.window?.windowController?.close()
        AppDelegate().updateCounters()
    }
    
    @IBAction func cancelAndClose(_ sender: NSButton) {
        clearFields()
        self.window?.windowController?.close()
        AppDelegate().updateCounters()
    }

    convenience init() {
        self.init(windowNibName: "CounterWindow")
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        self.window?.level = .floating
        //populateItems()
    }
    
    func repopulateItems() {
        populateItems()
    }
}

// MARK: - Population
private extension counterWindow {
    func populateItems() {
        print("testestestestsetsetst")
        boardCounterBox.stringValue = "\(CounterManager().bordNr)"
        print(CounterManager().bordNr)
        closedCounterBox.stringValue = "\(CounterManager().closedCount)"
        openCounterBox.stringValue = "\(CounterManager().openCount)"
        openMCCounterBox.stringValue = "\(CounterManager().openMCCount)"
        openZCCounterBox.stringValue = "\(CounterManager().openZCCount)"
        infoCounterBox.stringValue = "\(CounterManager().infoCount)"
        riskCounterBox.stringValue = "\(CounterManager().riskCount)"
    }
    
    
    // to test, if this works first time i'm going to be really happi
    func setItems() {
//        CounterManager().bordNr = boardCounterBox.integerValue
        CounterManager().closedCount = closedCounterBox.integerValue
        CounterManager().openCount = openCounterBox.integerValue
        CounterManager().openMCCount = openMCCounterBox.integerValue
        CounterManager().openZCCount = openZCCounterBox.integerValue
        CounterManager().infoCount = infoCounterBox.integerValue
        CounterManager().riskCount = riskCounterBox.integerValue
        print("SETTING: \(boardCounterBox.integerValue)")
    }
    
    func clearFields() {
        boardCounterBox.stringValue = ""
        closedCounterBox.stringValue = ""
        openCounterBox.stringValue = ""
        openMCCounterBox.stringValue = ""
        openZCCounterBox.stringValue = ""
        infoCounterBox.stringValue = ""
        riskCounterBox.stringValue = ""
    }
}


// MARK: - Identifier
extension counterWindow {
    
    static var identifier: String {
        return String(describing: self)
    }
}
