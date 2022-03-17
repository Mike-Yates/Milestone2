-- Product (maker, model, type)
CREATE TABLE IF NOT EXISTS Product  ( -- [Product Table]
    maker VARCHAR(10) NOT NULL,
    model VARCHAR(10) NOT NULL,
    type1 VARCHAR(10) NOT NULL,
    PRIMARY KEY (maker, model)
);

-- PC (model, speed, ram, hd, price)
CREATE TABLE IF NOT EXISTS PC  ( 
    model VARCHAR(10) NOT NULL PRIMARY KEY,
    speed DECIMAL NOT NULL,
    ram VARCHAR(10) NOT NULL,
    hd VARCHAR(10) NOT NULL,
    price INT NOT NULL
);

-- Laptop (model, speed, ram, hd, screen, price)
CREATE TABLE IF NOT EXISTS Laptop  ( 
    model VARCHAR(10) NOT NULL PRIMARY KEY,
    speed DECIMAL NOT NULL,
    ram VARCHAR(10) NOT NULL,
    hd INT NOT NULL,
    screen VARCHAR(10) NOT NULL,
    price INT NOT NULL
);

-- Printer (model, color, type, price)
CREATE TABLE IF NOT EXISTS Printer  ( 
    model VARCHAR(10) NOT NULL PRIMARY KEY,
    color VARCHAR(10) NOT NULL,
    type1 VARCHAR(10) NOT NULL,
    price INT NOT NULL
);

INSERT INTO Product VALUES ('maker1', 'model1', 'PC');
INSERT INTO Product VALUES ('maker1', 'model2', 'Laptop');
INSERT INTO Product VALUES ('maker1', 'model3', 'Printer');
INSERT INTO Product VALUES ('maker2', 'model4', 'PC');
INSERT INTO Product VALUES ('maker2', 'model5', 'Laptop');
INSERT INTO Product VALUES ('maker2', 'model6', 'Printer');
INSERT INTO Product VALUES ('maker2', 'model7', 'PC');
INSERT INTO Product VALUES ('maker2', 'model8', 'PC');
INSERT INTO Product VALUES ('maker2', 'model9', 'Laptop');
INSERT INTO Product VALUES ('maker1', 'model10', 'Printer');

INSERT INTO PC VALUES ('model1', 1.0, 'ram1', 'hd1', 500);
INSERT INTO PC VALUES ('maker4', 2.0, 'ram2', 'hd1', 750);
INSERT INTO PC VALUES ('model7', 3.0, 'ram3', 'hd1', 1000);
INSERT INTO PC VALUES ('maker8', 4.0, 'ram4', 'hd1', 550);

INSERT INTO Laptop VALUES ('model2', 0.5, 'ram1', 480, 'screen1', 500);
INSERT INTO Laptop VALUES ('model5', 2.0, 'ram1', 720, 'screen1', 750);
INSERT INTO Laptop VALUES ('model9', 3.0, 'ram1', 1080, 'screen1', 1000);

INSERT INTO Printer VALUES ('model3', 'gray', 'type11', 750);
INSERT INTO Printer VALUES ('model6', 'white', 'type12', 1000);
INSERT INTO Printer VALUES ('model10', 'black', 'type13', 350);