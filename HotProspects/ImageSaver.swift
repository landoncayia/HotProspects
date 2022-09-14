//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Landon Cayia on 8/16/22.
//

import UIKit

class ImageSaver: NSObject {
    // Optional handlers to be used if needed
    var successHandler: (() -> Void)?
    var errorHandler: ((Error) -> Void)?
    
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        // Question marks are used because the handlers might not exist
        if let error = error {
            errorHandler?(error)
        } else {
            successHandler?()
        }
    }
}
