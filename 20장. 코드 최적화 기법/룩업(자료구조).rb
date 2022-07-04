def connect_books_with_authors(books, authors)
    books_with_authors = []
    author_hash_table = {}

    # 저자 데이터를 저자 해시 테이블로 변환
    authors.each do |author|
        author_hash_table[author["author_id"]] = author["name"]
    end

    books.each do |book|
        books_with_authors << {"title" : book["title"], "author" => author_hash_table[book["author_id"]]}
    end

    return books_with_authors
end

# O(N + M)