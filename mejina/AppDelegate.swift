//
//  AppDelegate.swift
//  mejina
//
//  Created by AMANO TOMOO on 2018/07/25.
//  Copyright © 2018年 AMANO TOMOO. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var url: String!
    var view: ViewController!
    
    override func awakeFromNib() {
        let aem = NSAppleEventManager.shared()
        aem.setEventHandler(self, andSelector: #selector(self.handleGetURLEvent), forEventClass: AEEventClass(kInternetEventClass), andEventID: AEEventID(kAEGetURL))
        
//        var appUrl = Bundle.main.bundleURL.appendingPathComponent("", isDirectory: true)
//        var status = LSRegisterURL(appUrl as CFURL!, true)

    }
    
    @objc func handleGetURLEvent(_ event: NSAppleEventDescriptor) {
        NSLog("%@", event)
//        if (event.eventClass.description == "GURL" && event.eventID.description == "GURL") {
//            NSLog("%@", event)
//        }

        url = (event.paramDescriptor(forKeyword: keyDirectObject)?.stringValue)!
//        let alert = NSAlert()
//        alert.messageText = url
//        alert.runModal()
        
        view.setUrl()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        //        let aem = NSAppleEventManager.shared()
//        aem.setEventHandler(self, andSelector: Selector(("handleGetURLEvent:replyEvent:")), forEventClass: AEEventClass(kInternetEventClass), andEventID: AEEventID(kAEGetURL))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        print("bye")
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        print("close window")
        return true
    }

}

