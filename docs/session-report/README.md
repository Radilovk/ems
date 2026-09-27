# Session report — design assets

- `mockup.html` — approved-direction mockup of the client history + session report (sample data).
- `idx_{male,female}_{front,back}.png` — body index maps for the muscle map. 8-bit grey, one value per pixel:
  `0` outside, `1..10` = suit channel + 1 (PartStrenthBean.buwei order: 0 chest, 1 abs, 2 front thigh,
  3 calf, 4 arms, 5 traps, 6 back, 7 lower back, 8 glutes, 9 back thigh), `11` other muscle (not a channel),
  `12` body. Recolor per pixel by channel dose (5 discrete steps: blue, cyan, green, yellow, red — no orange),
  draw scaled with smoothing; glow = blurred copy of the hottest channels under the figure.
- Sources: user-supplied reference art (male: segmented blue/grey figure; female: pink/black figure), segmented
  by colour, components assigned to channels by position.
