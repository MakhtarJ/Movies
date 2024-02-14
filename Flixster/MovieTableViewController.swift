import UIKit
import Nuke

class MovieDesc: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var backdropImageView: UIImageView!
    @IBOutlet private weak var voteAverageLabel: UILabel!
    @IBOutlet private weak var voteCountLabel: UILabel!
    @IBOutlet private weak var popularityLabel: UILabel!

    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        guard let movie = movie else { return }

        titleLabel.text = movie.title
        descriptionLabel.text = movie.fullDescription
        voteAverageLabel.text = "Vote Average: \(movie.voteAverage)"
        voteCountLabel.text = "Vote Count: \(movie.voteCount)"
        popularityLabel.text = "Popularity: \(movie.popularity)"

        // Load backdrop image asynchronously using Nuke
        if let backdropURL = movie.backdropImageURL {
            Nuke.loadImage(with: backdropURL, into: backdropImageView)
        }
    }
}
