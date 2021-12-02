//
//  MetalView.swift
//  MetalTutorial1
//
//  Created by Yash Jivani on 02/12/21.
//

import Cocoa
import MetalKit

class MetalView: MTKView {

    var renderer: Renderer!
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        self.device = MTLCreateSystemDefaultDevice()
        
        self.colorPixelFormat = .bgra8Unorm
        self.clearColor = MTLClearColor(red: 1, green: 0.5, blue: 0, alpha: 1)
        renderer = Renderer(device: device!)
        self.delegate = renderer
    }
    
}
