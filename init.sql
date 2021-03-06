CREATE TABLE Bill (
    Bill_number INT NOT NULL,
    Purchase_time TIME NOT NULL,
    Purchase_date DATE NOT NULL,
    PRIMARY KEY (Bill_number)
);

CREATE TABLE Products (
    ProductID VARCHAR(255) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Product_name VARCHAR(255) NOT NULL,
    Brand VARCHAR(255),
    PRIMARY KEY (ProductID)

);

CREATE TABLE Category (
    Category_id VARCHAR(255) PRIMARY KEY NOT NULL
);  

CREATE TABLE BelongsTo (
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FallsUnder (
    FOREIGN KEY (SubCategoryID) REFERENCES Product(ProductID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (SuperCategoryID) REFERENCES Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
);
