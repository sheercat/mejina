//
//  ViewController.swift
//  mejina
//
//  Created by AMANO TOMOO on 2018/07/25.
//  Copyright © 2018年 AMANO TOMOO. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var text: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let app = NSApplication.shared.delegate as! AppDelegate
        app.view = self
    }
    
    func setUrl() {
        let app = NSApplication.shared.delegate as! AppDelegate
        text.stringValue = app.url
    }

    @IBAction func onClick(_ sender: NSButton) {
        if let url = URL(string: text.stringValue) {
//            let alert = NSAlert()
//            alert.messageText = url.absoluteString
//            alert.runModal()

            NSWorkspace.shared.open(url)
            exit(0)
        }
    }
    
//    @IBAction func done(_ sender: NSTextFieldCell) {
//        print("done")
//        if let url = URL(string: sender.stringValue),
//            NSWorkspace.shared.open(url) {
//            exit(0)
//        }
//    }
    
//    override var representedObject: Any? {
//        didSet {
//        // Update the view, if already loaded.
//        }
//    }


}

