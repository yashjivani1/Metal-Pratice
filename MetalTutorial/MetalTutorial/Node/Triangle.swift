//
//  Triangle.swift
//  MetalTutorial
//
//  Created by Yash Jivani on 12/12/21.
//

import MetalKit

class Triangle: Primitive {
    var color: float4!
    
    init(device: MTLDevice, color: float4) {
        self.color = color
        super.init(device: device)
    }
    
    override func buildVertices() {
        vertices = [
            Vertex(position: float3(0, 1, 0), color: color),
            Vertex(position: float3(-1, -1, 0), color: color),
            Vertex(position: float3(1, -1, 0), color: color)
        ]
        
        indices = [
            0, 1, 2
        ]
    }
}
