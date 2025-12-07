DROP DATABASE IF EXISTS worldcup;
CREATE DATABASE worldcup;

\connect worldcup;

CREATE TABLE public.teams (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE public.games (
    game_id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    round VARCHAR(50) NOT NULL,
    winner_id INT NOT NULL REFERENCES public.teams(team_id),
    opponent_id INT NOT NULL REFERENCES public.teams(team_id),
    winner_goals INT NOT NULL,
    opponent_goals INT NOT NULL
);
