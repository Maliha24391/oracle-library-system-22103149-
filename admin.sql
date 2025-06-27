-- Step 1: Optimize search speed by adding indexes on commonly used columns

CREATE INDEX idx_books_author ON BOOKS(author);
CREATE INDEX idx_books_title ON BOOKS(title);
CREATE INDEX idx_transactions_member ON TRANSACTIONS(member_id);
CREATE INDEX idx_transactions_book ON TRANSACTIONS(book_id);

-- Step 2: Analyze how the database will execute a query searching books by author

EXPLAIN SELECT * FROM BOOKS WHERE author = 'John Smith';
