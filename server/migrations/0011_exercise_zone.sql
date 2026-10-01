-- The admin's own picker group for an exercise (the library's is a guess from the source's target muscle):
-- abs, glutes, legs, back, chest, arms, shoulders, functional (whole-body, no one target), cardio, stretch;
-- '' = the library's.
ALTER TABLE exercise_picks ADD COLUMN zone TEXT NOT NULL DEFAULT '';
