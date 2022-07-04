def connect_books_with_authors(books, authors)
    books_with_authors = []

    books.each do |book|
        authors.each do |author|
            if book["author_id"] == author["author_id"]
                books_with_authors << {"title" => book["title"], "author" => author["name"]}
            end
        end
    end

    return books_with_authors
end

# O(N * M)