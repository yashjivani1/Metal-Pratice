//
//  Types.swift
//  MetalTutorial
//
//  Created by Yash Jivani on 03/12/21.
//

import MetalKit

struct Vertex {
    var position: float3
    var color: float4
}

struct ModelConstants {
    var modelMatrix = matrix_identity_float4x4
}
