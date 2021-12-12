//
//  Node.swift
//  MetalTutorial
//
//  Created by Yash Jivani on 12/12/21.
//

import MetalKit

class Node {
    var children: [Node] = []
    
    func add(child: Node) {
        children.append(child)
    }
    
    func render(commandEncoder: MTLRenderCommandEncoder) {
        for child in children {
            child.render(commandEncoder: commandEncoder)
        }
    }
}
