//
//  ViewController.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 03/05/2021.
//
/*
import Cocoa

class PreferencesWindowController: NSWindowController, NSWindowDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var soundEnabledCheckbox: NSButton!
    @IBOutlet weak var availableVideosDropdown: NSPopUpButton!

    
    //debug items
    @IBOutlet weak var debugDropdownLabel: NSTextField!
    @IBOutlet weak var debuggingLabel: NSTextField!
    @IBOutlet weak var debugPlayItem: NSTextField!
    
}

// MARK: - Lifecycle
extension PreferencesWindowController {
    
    convenience init(windowNibName: String ) {
        self.init(windowNibName: "CounterWindow")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        configure()
    }
}

// MARK: - Configuration
private extension PreferencesWindowController {
    
    func configure() {
        setupButtons()
        setSoundAvailableCheckbox()
    }
    
    func setupButtons() {

        //populate debug items
        debuggingLabel.isHidden = true
        debugPlayItem.isHidden = true
        debugDropdownLabel.isHidden = true

        
        // Setup the drop down with available videos
        availableVideosDropdown.removeAllItems()
//        availableVideosDropdown.addItems(withTitles: availableVideos)

    }
    
    func setSoundAvailableCheckbox() {

    }

}

// MARK: - Actions
private extension PreferencesWindowController {
    
    @IBAction func toggleSoundAction(_ sender: NSButton) {

    }
    
    @IBAction func changeSelectedVideo(_sender: NSPopUpButton) {
        debugDropdownLabel.stringValue = _sender.selectedItem!.title

        setSoundAvailableCheckbox()
    }


    
    @IBAction func doneAction(_ sender: NSButton) {
        guard let window = window else {
            return
        }

        window.sheetParent?.endSheet(window)
    }
}

// MARK: - Identifier
extension PreferencesWindowController {
    
    static var identifier: String {
        return String(describing: self)
    }
}
 */
