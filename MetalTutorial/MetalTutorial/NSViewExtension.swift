//
//  NSViewExtension.swift
//  MetalTutorial1
//
//  Created by Yash Jivani on 02/12/21.
//

import Cocoa

extension NSView {

    static func loadFromNib(nibName: String, owner: Any?) -> NSView? {

        var arrayWithObjects: NSArray?

        let nibLoaded = Bundle.main.loadNibNamed(NSNib.Name(nibName), owner: owner, topLevelObjects: &arrayWithObjects)

        if nibLoaded {
            guard let unwrappedObjectArray = arrayWithObjects else { return nil }
            for object in unwrappedObjectArray {
                if object is NSView {
                    return object as? NSView
                }
            }
            return nil
        } else {
            return nil
        }
    }
}
