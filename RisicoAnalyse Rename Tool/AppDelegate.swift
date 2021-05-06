//
//  AppDelegate.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 03/05/2021.
//

import Cocoa
import Foundation

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
    // it exists
    let counterWindowController = counterWindow();
    
    // MARK: Outlets
    // Buttons
    @IBOutlet weak var nextBoardBTN: NSButton!
    @IBOutlet weak var skipBoardBTN: NSButton!
    @IBOutlet weak var nextImageBTN: NSButton!
    @IBOutlet weak var prevImageBTN: NSButton!
    @IBOutlet weak var boardClosedBTN: NSButton!
    @IBOutlet weak var boardOpenBTN: NSButton!
    @IBOutlet weak var boardOpenMCBTN: NSButton!
    @IBOutlet weak var boardOpenZCBTN: NSButton!
    @IBOutlet weak var boardInfoBTN: NSButton!
    @IBOutlet weak var boardRiskBTN: NSButton!
    
    @IBOutlet weak var editCountersBTN: NSButton!
    
    // Labels
    @IBOutlet weak var boardCounter: NSTextField!
    @IBOutlet weak var closedCounter: NSTextField!
    @IBOutlet weak var openCounter: NSTextField!
    @IBOutlet weak var openMCCounter: NSTextField!
    @IBOutlet weak var openZCCounter: NSTextField!
    @IBOutlet weak var infoCounter: NSTextField!
    @IBOutlet weak var riskCounter: NSTextField!
    
    // Segmented switch
    @IBOutlet weak var dbacHtSwitch: NSSegmentedControl!
    
    // Progress
    @IBOutlet weak var progressLabel: NSTextField!
    @IBOutlet weak var progressBar: NSProgressIndicator!
    
    // Spinner
    @IBOutlet weak var loadingSpinner: NSProgressIndicator!
    
    // Filename
    @IBOutlet weak var fileNameBox: NSTextField!
    
    // Board name
    @IBOutlet weak var boardNameBox: NSTextField!
    
    // Image
    @IBOutlet weak var imageElement: NSImageView!

    
    @IBAction func testAction(_ sender: NSButton) {
        //updateCounters();
//        showNotification();
//        goGetCoffee();
//        clearSelections();
        //CounterManager().incrementCounter(counter: "board");
        generateFileName()
        CounterManager().incrementCounter(counter: "board");
        
        updateCounters();
        
    }
    
    
    @IBAction func openFolder(_ sender: NSMenuItem) {
        FolderSelection().selectFolder();
    }
    
    @IBAction func modifyCounters(_ sender: NSMenuItem) {
        counterWindowController.showWindow (nil);
        counterWindowController.repopulateItems();
    }
    
    // updatecounters was here
    func updateCounters() {
        print("i am updating")
        boardCounter?.stringValue = "Board Counter: \(CounterManager().bordNr)";
        closedCounter?.stringValue = "Gesloten Counter: \(CounterManager().closedCount)";
        openCounter?.stringValue = "Open Counter: \(CounterManager().openCount)";
        openMCCounter?.stringValue = "Open MC Counter: \(CounterManager().openMCCount)";
        openZCCounter?.stringValue = "Open ZC Counter: \(CounterManager().openZCCount)";
        infoCounter?.stringValue = "Info Counter: \(CounterManager().infoCount)";
        riskCounter?.stringValue = "Risico Counter: \(CounterManager().riskCount)";
    }
    
    // MARK: Launch Handling
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        updateCounters();
//        loadImage(path: "/Users/maxim/Documents/test.jpg");
        loadImage(path: "/Users/maxim/Desktop/AGB sport_fotos/1 DBAC-ALSB links - info 04.jpeg");
//        loadingSpinner.startAnimation(self);
        print("We Like Fortnite");
        ProgressManager().updateProgressBar();
        SpinnerManager().showSpinner();
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    // Kill the process when all windows are closed, aka cleaning up after themselves
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func loadImage(path: String) {
        print("Path: \(path)")
        imageElement?.image = NSImage(byReferencingFile: path);
    }
    
    func loadLocalImage(name: String) {
        print("So i want to load image with <\(name)> as name /shrug");
        imageElement.image = NSImage(named: name); //will work?
    }
}


// MARK: Category Selection
extension AppDelegate {
    @IBAction func selectedClosedBTN(_ sender: NSButton) {
//        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
    }
    
    @IBAction func selectedOpenBTN(_ sender: NSButton) {
        boardClosedBTN.state = NSControl.StateValue.off;
//        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
    }
    
    @IBAction func selectedOpenMCBTN(_ sender: NSButton) {
        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
//        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
    }
    
    @IBAction func selectedOpenZCBTN(_ sender: NSButton) {
        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
//        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
    }
    
    @IBAction func selectedInfoBTN(_ sender: NSButton) {
        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
//        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
    }
    
    @IBAction func selectedRiskBTN(_ sender: NSButton) {
        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
//        boardRiskBTN.state = NSControl.StateValue.off;
    }
}

// MARK: Resetting Selections
extension AppDelegate {
    func clearSelections() {
        boardClosedBTN.state = NSControl.StateValue.off;
        boardOpenBTN.state = NSControl.StateValue.off;
        boardOpenMCBTN.state = NSControl.StateValue.off;
        boardOpenZCBTN.state = NSControl.StateValue.off;
        boardInfoBTN.state = NSControl.StateValue.off;
        boardRiskBTN.state = NSControl.StateValue.off;
        dbacHtSwitch?.selectedSegment = 0;
        fileNameBox?.stringValue = "";
    }
}

// MARK: Incrementing Counters


// MARK: Fetching the category
extension AppDelegate {
    
    func fetchCategory() -> String {
        var fetchedCategory = "";
        
        switch NSControl.StateValue.on {
        case boardClosedBTN.state:
            print("boardclosed btn highlighted");
            fetchedCategory = "Gesloten";
        case boardOpenBTN.state:
            print("boardopen btn highlighted");
            fetchedCategory = "Open";
        case boardOpenMCBTN.state:
            print("boardopenmc btn highlighted");
            fetchedCategory = "Open MC";
        case boardOpenZCBTN.state:
            print("boardopenzc btn highlighted");
            fetchedCategory = "Open ZC";
        case boardInfoBTN.state:
            print("boardinfo btn highlighted");
            fetchedCategory = "Info";
        case boardRiskBTN.state:
            print("boardrisk btn highlighted");
            fetchedCategory = "Risico"
        default:
//            print("No category selected");
            fetchedCategory = "nada";
            // TODO: Handle buttons not being selected, probably an error message or something.
            // MARK: TODO
        }
        return fetchedCategory;
    }
}

// MARK: Generating String
extension AppDelegate {
    func generateFileName() {
        let segmentString: String;
        if dbacHtSwitch.selectedSegment == 0 {
            segmentString = "DBAC";
        } else {
            segmentString = "HT";
        }
        
        let boardNameString: String;
        if boardNameBox.stringValue == "" {
            boardNameString = "[BORD NAAM]";
        } else {
            boardNameString = "\(boardNameBox.stringValue)";
        }
        
        // This is a string because we convert the Int to a 2 digit string.
        var categoryCounterValue: String;
        switch fetchCategory() {
        case "Gesloten":
            print("####fetched gesloten item");
//            print("This means i need to use \(closedCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().closedCount);
        case "Open":
            print("####fetched open item");
//            print("This means i need to use \(openCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().openCount);
        case "Open MC":
            print("####fetched open MC item");
//            print("This means i need to use \(openMCCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().openMCCount);
        case "Open ZC":
            print("####fetched open ZC item");
//            print("This means i need to use \(openZCCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().openZCCount);
        case "Info":
            print("####fetched info item");
//            print("This means i need to use \(infoCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().infoCount);
        case "Risico":
            print("####fetched risk item");
//            print("This means i need to use \(riskCount) as counter")
            categoryCounterValue = String(format: "%02d", CounterManager().riskCount)
        case "nada":
            categoryCounterValue = String(format: "%08d", 0);
        default:
            print("i fetched \(fetchCategory()) ");
            categoryCounterValue = ""; // make it empty to avoid ghosting numbers
        }
        
        fileNameBox?.stringValue = "\(CounterManager().bordNr) \(segmentString)-\(boardNameString) - \(fetchCategory()) \(categoryCounterValue)";
    }
}

// MARK: Clearing views
extension AppDelegate {
    func clearViews() {
        //guess what, this is a todo
        // MARK: TODO
    }
}

// MARK: Updating Progress Bar
extension AppDelegate {

}

