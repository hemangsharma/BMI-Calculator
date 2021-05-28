//
//  AppDelegate.swift
//  BMI
//
//  Created by Hemang Sharma on 24/05/21.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var preferencesWindowController: NSWindowController?
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        if UserDefaults.standard.value(forKey: "measurementSystem") == nil {
            UserDefaults.standard.setValue("metric", forKey: "measurementSystem")
        }
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    
    @IBAction func showPreferences(_ sender: Any) {
        if preferencesWindowController == nil {
            let storyboardName = NSStoryboard.Name(stringLiteral: "Preferences")
            let storyboard = NSStoryboard(name: storyboardName, bundle: nil)
            
            if let windowController = storyboard.instantiateInitialController() as? NSWindowController {
                preferencesWindowController = windowController
            }
        }
        
        if let windowController = preferencesWindowController {
            windowController.showWindow(nil)
        }
    }
    
    
}

