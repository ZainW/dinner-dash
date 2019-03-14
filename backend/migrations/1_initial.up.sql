CREATE TABLE public.user (
  id SERIAL NOT NULL PRIMARY KEY,
  email VARCHAR(100) NOT NULL,
  passwordHash TEXT NOT NULL
);

CREATE TABLE public.recipe (
  id SERIAL NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  url TEXT,
  userId INTEGER NOT NULL
    CONSTRAINT recipe_user_id_fk
      REFERENCES public.user
      ON DELETE CASCADE
);

CREATE TABLE public.session (
  id SERIAL NOT NULL PRIMARY KEY,
  userId INTEGER NOT NULL,
  sessionId VARCHAR(64) NOT NULL,
  validTo TIMESTAMP NOT NULL
)
