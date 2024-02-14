import UIKit
import Nuke

extension UIImageView {
    func loadImage(from url: URL) {
        Nuke.loadImage(with: url, into: self)
    }
}
