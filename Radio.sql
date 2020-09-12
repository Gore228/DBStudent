CREATE TABLE Sotrudniki
(
  Kod_sotrudnika INT NOT NULL,
  FIO VARCHAR NOT NULL,
  Vozrast INT NOT NULL,
  Pol VARCHAR NOT NULL,
  Adres VARCHAR NOT NULL,
  Telefon INT NOT NULL,
  Pasportnie_dannie INT NOT NULL,
  Kod_dolzhnosti INT NOT NULL,
  PRIMARY KEY (Kod_sotrudnika),
  UNIQUE (Kod_dolzhnosti)
);

CREATE TABLE Dolzhnosti
(
  Kod_dolzhnosti INT NOT NULL,
  Naimenovanie_dolzhnosti VARCHAR NOT NULL,
  Trebovanie VARCHAR NOT NULL,
  Obyazonasti VARCHAR NOT NULL,
  Oklad INT NOT NULL,
  PRIMARY KEY (Kod_dolzhnosti)
);

CREATE TABLE Ispolniteli
(
  Kod_ispolnitelya INT NOT NULL,
  Naimenovanie VARCHAR NOT NULL,
  Opisanie VARCHAR NOT NULL,
  PRIMARY KEY (Kod_ispolnitelya)
);

CREATE TABLE Zhanri
(
  Kod_zhanra INT NOT NULL,
  Naimenovanie VARCHAR NOT NULL,
  Opisanie VARCHAR NOT NULL,
  PRIMARY KEY (Kod_zhanra)
);

CREATE TABLE Zapisi
(
  Kod_zapisi INT NOT NULL,
  Naimenovanie VARCHAR NOT NULL,
  Kod_ispolnitelya INT NOT NULL,
  Albom VARCHAR NOT NULL,
  God INT NOT NULL,
  Kod_zhanra INT NOT NULL,
  Data_zapisi DATE NOT NULL,
  Dlitelnost INT NOT NULL,
  Reiting INT NOT NULL,
  PRIMARY KEY (Kod_zapisi),
  UNIQUE (Kod_ispolnitelya),
  UNIQUE (Kod_zhanra)
);

CREATE TABLE Grafik_raboti
(
  Data DATE NOT NULL,
  Kod_sotrudnika INT NOT NULL,
  Vremya_1 VARCHAR NOT NULL,
  Kod_zapisi_1 INT NOT NULL,
  Vremya_2 VARCHAR NOT NULL,
  Kod_zapisi_2 INT NOT NULL,
  Vremya_3 VARCHAR NOT NULL,
  Kod_zapisi_3 INT NOT NULL,
  PRIMARY KEY (Kod_sotrudnika)
);