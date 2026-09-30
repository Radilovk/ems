-- The admin's choice from the exercise library (branding/exercises/library.json, 302 exercises): which ones the
-- tablets offer for building workouts, and how many frames the figure moves through (3, 2 = first + last, 1 = still).
-- Only what the admin changed is stored; the 40 built-in exercises are on by default, all others off.
CREATE TABLE IF NOT EXISTS exercise_picks (
  id TEXT PRIMARY KEY,
  on_app INTEGER NOT NULL,
  frames INTEGER NOT NULL DEFAULT 0,
  updated_at INTEGER NOT NULL
);
