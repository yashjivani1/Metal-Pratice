//
//  Renderer.swift
//  MetalTutorial1
//
//  Created by Yash Jivani on 02/12/21.
//

import Foundation
import MetalKit

class Renderer: NSObject {
    
    var commandQueue: MTLCommandQueue!
    
    var scene: Scene!
    
    init(device: MTLDevice) {
        super.init()
        commandQueue = device.makeCommandQueue()
        self.scene = BasicScene(device: device)
    }
}

extension Renderer: MTKViewDelegate {
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        
    }
    
    func draw(in view: MTKView) {
        guard let drawable = view.currentDrawable, let renderPassDescriptor = view.currentRenderPassDescriptor else { return }
        
        let commandBuffer = commandQueue.makeCommandBuffer()
        if let commandEncoder = commandBuffer?.makeRenderCommandEncoder(descriptor: renderPassDescriptor) {
            scene.render(commandEncoder: commandEncoder)
            commandEncoder.endEncoding()
        }
        commandBuffer?.present(drawable)
        commandBuffer?.commit()
        
    }
    
    
}
