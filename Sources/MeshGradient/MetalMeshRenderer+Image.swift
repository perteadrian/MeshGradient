//
//  MetalMeshRenderer+Image.swift
//
//
//  Created by Adrian Perțe on 09.04.2024.
//

import MetalKit
#if canImport(UIKit)
import UIKit

public extension MetalMeshRenderer {
    func exportContentAsImage(from view: MTKView) -> UIImage? {
        guard let drawable = view.currentDrawable,
              let image = CIImage(mtlTexture: drawable.texture, options: nil) else {
            return nil
        }
        
        return UIImage(ciImage: image)
    }
}
#endif
