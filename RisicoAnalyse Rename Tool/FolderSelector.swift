//
//  FolderSelector.swift
//  RisicoAnalyse Rename Tool
//
//  Created by Maxim Coppieters on 03/05/2021.
//

import Foundation
import Cocoa

class FolderSelection {
    func selectFolder() {
        let dialog = NSOpenPanel();

        dialog.title                   = "Choose raw images folder";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseFiles = true; // set to true while testing loading plain images
        dialog.canChooseDirectories = true;
        
        if (dialog.runModal() ==  NSApplication.ModalResponse.OK) {
            let result = dialog.url

            if (result != nil) {
                let rawFilePath: String = result!.path
                
                // path contains the directory path e.g
                // /Users/ourcodeworld/Desktop/folder
                //AppDelegate.loadImage(path: rawFilePath);
                print("will log stuff")
                print(rawFilePath)
                AppDelegate().loadImage(path: rawFilePath);
            }
        } else {
            // User clicked on "Cancel"
            AppDelegate().loadLocalImage(name: "nada");
            return
        }
    }
}
