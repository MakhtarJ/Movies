import UIKit
import Nuke

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func configure(with movie: Movie) {
        titleLabel.text = movie.title
        descriptionLabel.text = movie.partialDescription

        // Load remote image using Nuke
        if let posterImageURL = movie.posterImageURL {
            Nuke.loadImage(with: posterImageURL, into: posterImageView)
        }
    }
}
