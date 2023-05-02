CREATE TABLE IF NOT EXISTS "Исполнитель"(
	 "Исполнитель_ИД" VARCHAR(80) PRIMARY KEY,
	 "Имя" VARCHAR(80) NOT NULL);
CREATE TABLE IF NOT EXISTS "Жанр"(
	"Жанр_ИД" VARCHAR(80) PRIMARY KEY,
	"Название_жанра" VARCHAR(80) NOT NULL);
CREATE TABLE IF NOT EXISTS "Жанры_Исполнителя"(
	"Жанр_ИД" VARCHAR(80) REFERENCES "Жанр"("Жанр_ИД"),
	"Исполнитель_ИД" VARCHAR(80) REFERENCES "Исполнитель"("Исполнитель_ИД"),
	CONSTRAINT pk PRIMARY KEY("Жанр_ИД", "Исполнитель_ИД"));
CREATE  TABLE IF NOT EXISTS "Альбом"(
	"Альбом_ИД" VARCHAR(80) PRIMARY KEY,
	"Название альбома" VARCHAR(80) NOT NULL,
	"Год_выпуска" VARCHAR(80) NOT NULL);
CREATE TABLE IF NOT EXISTS "Исполнители_альбома"(	
	"Исполнитель_ИД" VARCHAR(80) REFERENCES "Исполнитель"("Исполнитель_ИД"),
	"Альбом_ИД" VARCHAR(80) REFERENCES "Альбом"("Альбом_ИД"),
	CONSTRAINT pk2 PRIMARY KEY("Исполнитель_ИД", "Альбом_ИД"));
CREATE TABLE IF NOT EXISTS "Трек"(
	"Трек_ИД" VARCHAR(80) PRIMARY KEY,
	"Название" VARCHAR(80) NOT NULL,
	"Длительность" INTEGER NOT NULL,
	"Альбом_ИД" VARCHAR(80) REFERENCES "Альбом"("Альбом_ИД")
	);
CREATE TABLE IF NOT EXISTS "Сборник"(
	"Сборник_ИД" VARCHAR(80) PRIMARY KEY,
	"Название" VARCHAR(80) NOT NULL,
	"Год" DATE NOT NULL);
CREATE TABLE IF NOT EXISTS "Трек_Сборник"(
	"Трек_ИД" VARCHAR(80) REFERENCES "Трек"("Трек_ИД"),
	"Сборник_ИД" VARCHAR(80) REFERENCES "Сборник"("Сборник_ИД"),
	CONSTRAINT pk3 PRIMARY KEY("Трек_ИД","Сборник_ИД"));

