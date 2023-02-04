
@State private var searchText = ""

var bookSearchResult: [Book] {
    if searchText.isEmpty {
        return sortedBooks
    } else {
        return sortedBooks.filter {
            $0.title.localizedCaseInsensitiveContains(searchText)
        }
    }
}

    .searchable(text: $searchText, prompt: "Search for a classic book")
