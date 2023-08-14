-- reset la db

DROP TABLE IF EXISTS RejectedRoll;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS AccountCat;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Admin;

-- création de la db

CREATE TABLE Admin(
    clef VARCHAR(255) NOT NULL,
    pseudo VARCHAR(50) NOT NULL UNIQUE,
    is_ban BOOLEAN DEFAULT FALSE,
    
    PRIMARY KEY(clef, pseudo)
);

CREATE TABLE User(
    id_user INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    pseudo VARCHAR(50) NOT NULL UNIQUE,
    mdp VARCHAR(255) NOT NULL,
    is_ban BOOLEAN DEFAULT FALSE
);

CREATE TABLE AccountCat(
    id_cat INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    cat_type VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Account(
    id_account INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    pseudo VARCHAR(50) NOT NULL UNIQUE,
    mdp VARCHAR(255) NOT NULL,
    informations VARCHAR(300),
    is_valid BOOLEAN DEFAULT TRUE,
    id_user INT NOT NULL,
    id_cat INT NOT NULL,

    FOREIGN KEY(id_user) REFERENCES User(id_user),
    FOREIGN KEY(id_cat) REFERENCES AccountCat(id_cat)
);

CREATE TABLE RejectedRoll(
    id_account INTEGER NOT NULL,
    id_user INTEGER NOT NULL,
    roll_date DATE DEFAULT SYSDATE,

    PRIMARY KEY(id_account, id_user),
    FOREIGN KEY(id_user) REFERENCES User(id_user),
    FOREIGN KEY(id_account) REFERENCES Account(id_account)
);