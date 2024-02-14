import UIKit
import Nuke

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Use the provided movieData array for testing
    var movies: [Movie] = movieData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set up table view properties
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        
        // Configure the cell with movie data
        let movie = movies[indexPath.row]
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.partialDescription
        
        // Load remote image using Nuke
        if let imageURL = movie.posterImageURL {
            cell.posterImageView.loadImage(from: imageURL)
        }
        
        return cell
    }
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Handle cell selection here, perform segue to MovieDetailsViewController
        performSegue(withIdentifier: "Segue", sender: indexPath)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue", let indexPath = sender as? IndexPath {
            let selectedMovie = movies[indexPath.row]
            if let movieDetailsVC = segue.destination as? MovieDetailsViewController {
                movieDetailsVC.movie = selectedMovie
            }
        }
    }
}
