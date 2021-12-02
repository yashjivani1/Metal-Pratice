//
//  ViewController.swift
//  MetalTutorial1
//
//  Created by Yash Jivani on 02/12/21.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let metalView: MetalView = NSView.loadFromNib(nibName: "MetalView", owner: self) as? MetalView {
            metalView.frame = self.view.bounds
            self.view.addSubview(metalView)
        }
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

