//
//  Scene.swift
//  MetalTutorial
//
//  Created by Yash Jivani on 12/12/21.
//

import MetalKit

class Scene: Node {
    var device: MTLDevice!
    init(device: MTLDevice) {
        self.device = device
        super.init()
    }
}
