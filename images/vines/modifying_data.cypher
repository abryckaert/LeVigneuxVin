// 1 Sell a book to a customer.
// Selling the book
CREATE (sc1:Shopping_cart)
WITH sc1
MATCH (ruben:Customer{first_name:"Ruben"})
MERGE (ruben)-[:OWNS]->(sc1)
WITH sc1
MATCH (b:Book{title:"Lords of the Rings"})
MERGE (sc1)-[:INCLUDES{quantity: 1}]->(b)
WITH sc1, b
CREATE (p1:Payment {amount: 24.99, date: "04/12/19"}),
(sc1)-[:PAID_BY]->(p1)
// updating informations
WITH b
SET b.stock = b.stock - 1
WITH b
SET b.sold_copies = b.stock + 1;


// 2 Change the address of a customer.
MATCH (n1:Customer)-[:LIVES_IN]->(n2:Address)
WHERE n1.first_name = "Bastien"
SET n2.city = "Oullins city";

// 3 Add an existing author to a book.
MATCH (a:Author {first_name : "JRR"}),
    (b:Book {title : "Tintin au Congo"})
MERGE (a)-[:WRITES]->(b);

// 4 Retire the "Space Opera" category and assign all books from 
// that category to the parent category. Don't assume you know the id of the parent category.
MATCH (c1:Category)-[:IS_PARENT]->(c2:Category)<-[:BELONGS_TO]-(b1:Book)
WHERE c2.category_name = "Space Opera"
WITH c1, c2, b1
MERGE (c1)<-[:BELONGS_TO]-(b1)
WITH c2
MATCH (n1)-[r1]-(c2)-[r2]-(n2)
DELETE r1,r2,c2;

// 5 Sell 3 copies of one book and 2 of another in a single order
// Selling the books
CREATE (sc1:Shopping_cart)
WITH sc1
MATCH (antho:Customer{first_name:"Anthony"})
MERGE (antho)-[:OWNS]->(sc1)
WITH sc1
MATCH (b1:Book{title: "Tintin au Congo"})
MERGE (sc1)-[:INCLUDES{quantity: 3}]->(b1)
WITH sc1, b1
MATCH (b2:Book{title: "Lords of the Rings"})
MERGE (sc1)-[:INCLUDES{quantity: 2}]->(b2)
WITH sc1, b1, b2
CREATE (p1:Payment {amount: 30.99, date: "09/11/23"}),
(sc1)-[:PAID_BY]->(p1)
// updating informations
WITH b1,b2
SET b1.stock = b1.stock - 3
WITH b1,b2
SET b1.sold_copies = b1.stock + 3
WITH b2
SET b2.stock = b2.stock - 2
WITH b2
SET b2.sold_copies = b2.stock + 2;