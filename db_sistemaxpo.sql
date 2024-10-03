CREATE DATABASE XPO_Musica;

USE XPO_Musica;

CREATE TABLE Usuario (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Musica (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    artista VARCHAR(255) NOT NULL
);

CREATE TABLE Playlist (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    usuario_id BIGINT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

CREATE TABLE Playlist_Musica (
    playlist_id BIGINT,
    musica_id BIGINT,
    PRIMARY KEY (playlist_id, musica_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlist(id) ON DELETE CASCADE,
    FOREIGN KEY (musica_id) REFERENCES Musica(id) ON DELETE CASCADE
);
