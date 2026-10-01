# UX golden rules — every screen, every level (tablet, band, report, card, PWA)

Owner's requirement. Read before building or changing any UI; check the result against the checklist at the end.
Sources condensed: Nielsen's 10 usability heuristics (NN/g), Material Design 3 and Apple HIG (touch targets,
spacing, hierarchy, motion), WCAG 2.2 (contrast, target size), Hick's / Fitts's laws, progressive disclosure,
Gestalt grouping, Krug ("Don't make me think"), Norman (affordances, feedback, mapping).

## 1. The owner's rules (they win over everything below)
1. **One clear attention hierarchy.** The one thing the user needs *now* is the biggest, first and brightest;
   secondary info is smaller or folded; rare/edge content (contraindication lists, phase tables) sits behind one
   question or tap — never a central block.
2. **Minimum interface, maximum perception.** Say it with space, size, colour, symbol and picture before words.
   One glance should tell state and next step. Text is the last resort, short and warm Bulgarian.
3. **Info buttons where needed.** Explanations live behind an ⓘ (or a tap on the thing), not on the screen.
4. **Derive, don't ask.** Anything the system can work out (profile from the client record, goal from the
   exercises, plan from the profile, resting HR measured in the background, band present or not) is computed in the
   backend, and every step adapts to it dynamically. A question is asked only when nothing can decide it.
5. **Fewest steps.** Merge steps that hold one decision each; a confirmation that is required anyway becomes the
   step's primary button ("✓ Добре е днес · към плана"), not a separate toggle plus a Next.
6. **Landscape first.** The tablet app is always landscape (wide and short): place things side by side, keep
   the key content above the fold, let long rows scroll sideways; never design for portrait height.
7. **No options that make no sense in the context.** (A workout is a workout — no "procedure" goal in it; a
   procedure is its own kind.) Every option must be meaningful for *this* object, *this* client, *this* moment.

## 2. Structure and flow
- One primary action per screen, bottom-right, filled; secondary actions ghost/outlined; destructive actions
  never next to the primary and never primary-coloured (confirm or undo).
- Wizards: ≤ 3 setup steps with a visible progress badge ("2 / 3"); Back always available; nothing lost on Back/✕.
- Smart defaults preselected (recommended program, remembered operator, client's goal); the user only corrects.
- Progressive disclosure: basic → "▾ Details" → advanced. Folded content shows how to unfold it (▾ / ▴).
- Blockers (can't start) appear where the fix is, in plain words, with the fix one tap away.
- Waits are hidden in parallel work (measure while the user answers); a wait that remains shows progress and
  continues by itself when done.
- Autosave. Show the state ("✓ Запазено") instead of a Save button.
- Work surfaces (editors, maps, live boards) are full-screen pages; short choices are sheets.

## 3. Visual hierarchy and layout
- Size scale (sp): hero value 40–64 · screen title 21–22 · card title 16–18 · body 14–15 · caption 12–13.
  Never more than 3 sizes in one card.
- Spacing on an 4/8 dp grid: 4 inside a group, 8–12 between related items, 16–24 between groups, 22–26 page gutter.
- Align to one left edge per column; numbers right-aligned or centred in tiles; equal widths for sibling buttons.
- Group by proximity and a shared card (Gestalt); separate groups by space before lines.
- Density for a tablet at arm's length: content ≤ ~1180 dp wide in sheets; no line > ~90 characters.

## 4. Colour, symbol, picture
- Colour carries meaning, the same everywhere: green = go / on / selected (GO), amber = attention, red = danger /
  stop, blue = info, the goal/Hz colours from the kit. Never colour alone — pair with a symbol or word (✓, ⊘, ▶, ■).
- State colours for toggles and index buttons: off = neutral, on = amber/yellow, selected = green — identical for
  every button of the same kind.
- Contrast ≥ 4.5:1 for text, ≥ 3:1 for icons and borders; both light and dark themes.
- Pictures over paragraphs: program art, exercise figures, the impulse map, zone bars.

## 5. Touch and feedback
- Targets ≥ 48 dp (≥ 56 dp for primary and in-session controls), ≥ 8 dp apart.
- Every tap answers within 100 ms: press state (`XemsUi.pressable`), a state change or a toast.
- Disabled buttons look disabled (alpha ~0.4) and the reason is visible nearby.
- Live values update in place; no layout jumps while the user is touching.

## 6. Words
- Plain, warm, natural Bulgarian; verbs on buttons ("Пусни импулсите", "Към плана"); no form-speak, no jargon
  (µs/Hz only where the trainer sets them).
- Numbers with units; ranges with an en dash (6–7 от 10).

## 7. Checklist before shipping a screen
1. What is the one thing the user needs here? Is it the biggest and first?
2. Can any field be derived instead of asked? Any step merged? Any option meaningless here?
3. Is every explanation behind an ⓘ or a tap, not on the screen?
4. One primary action? Back/✕ lose nothing?
5. Same colours/states as the rest of the kit (on / selected / off)?
6. Targets ≥ 48 dp, contrast OK in light and dark?
7. Laid out for landscape (wide, short)? Nothing needs portrait height?
8. Screenshot checked on the tablet (and band 212×520 where relevant).
