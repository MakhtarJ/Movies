//
//  Movie.swift
//  Flixster
//
//  Created by user253148 on 2/7/24.
//

import Foundation
struct Movie {
    let title: String
    let posterImageURL: URL?
    let partialDescription: String
    let fullDescription: String
    let backdropImageURL: URL?
    let voteAverage: Double
    let voteCount: Int
    let popularity: Double
}


let movieData: [Movie] = [
    Movie(
        title: "The Beekeeper",
        posterImageURL: URL(string: "https://image.tmdb.org/t/p/w154/A7EByudX0eOzlkQ2FIbogzyazm2.jpg")!,
        partialDescription: "One man’s campaign for vengeance...",
        fullDescription: "One man’s campaign for vengeance takes on national stakes after he is revealed to be a former operative of a powerful and clandestine organization known as Beekeepers.",
        backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w300/4MCKNAc6AbWjEsM2h9Xc29owo4z.jpg")!,
        voteAverage: 7.5,
        voteCount: 711,
        popularity: 4578.602
    ),
    Movie(
        title: "Wonka",
        posterImageURL: URL(string: "https://image.tmdb.org/t/p/w154/qhb1qOilapbapxWQn9jtRCMwXJF.jpg")!,
        partialDescription: "Willy Wonka – chock-full of ideas...",
        fullDescription: "Willy Wonka – chock-full of ideas and determined to change the world one delectable bite at a time – is proof that the best things in life begin with a dream, and if you’re lucky enough to meet Willy Wonka, anything is possible.",
        backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w300/yyFc8Iclt2jxPmLztbP617xXllT.jpg")!,
        voteAverage: 7.244,
        voteCount: 1869,
        popularity: 1665.323
    ),
    Movie(
        title: "황야",
        posterImageURL: URL(string: "https://image.tmdb.org/t/p/w154/24CL0ySodCF8bcm38xtBeHzHp7W.jpg")!,
        partialDescription: "After a deadly earthquake turns Seoul into...",
        fullDescription: "After a deadly earthquake turns Seoul into a lawless badland, a fearless huntsman springs into action to rescue a teenager abducted by a mad doctor.",
        backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w300/pWsD91G2R1Da3AKM3ymr3UoIfRb.jpg")!,
        voteAverage: 7.069,
        voteCount: 196,
        popularity: 1602.083
    ),
    Movie(
        title: "Aquaman and the Lost Kingdom",
        posterImageURL: URL(string: "https://image.tmdb.org/t/p/w154/7lTnXOy0iNtBAdRP3TZvaKJ77F6.jpg")!,
        partialDescription: "Black Manta seeks revenge on Aquaman for his father's death...",
        fullDescription: "Black Manta seeks revenge on Aquaman for his father's death. Wielding the Black Trident's power, he becomes a formidable foe. To defend Atlantis, Aquaman forges an alliance with his imprisoned brother. They must protect the kingdom.",
        backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w300/cnqwv5Uz3UW5f086IWbQKr3ksJr.jpg")!,
        voteAverage: 6.987,
        voteCount: 1435,
        popularity: 1373.572
    ),
    Movie(
        title: "Migration",
        posterImageURL: URL(string: "https://image.tmdb.org/t/p/w154/ldfCF9RhR40mppkzmftxapaHeTo.jpg")!,
        partialDescription: "After a migrating duck family alights on their pond...",
        fullDescription: "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
        backdropImageURL: URL(string: "https://image.tmdb.org/t/p/w300/meyhnvssZOPPjud4F1CjOb4snET.jpg")!,
        voteAverage: 7.706,
        voteCount: 520,
        popularity: 1163.536
    ),
]
