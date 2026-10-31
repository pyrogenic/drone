# Identicon-style generative art from a parameter vector

## Animated overlays (non-deterministic, time-driven)

On top of the static grid, layer:

- A **radial gradient glow** that slowly drifts position using `sin(time)`, scaled by a "breath" param. Gives a living, pulsing feel without redrawing the grid.
- **Shimmer pixels**: small bright dots whose visibility oscillates via `sin(time * 2 + i * offset)`. Only drawn above a param threshold.
- **Sparkle diamonds**: rotated 45-degree squares that phase in/out, driven by a different param (in our case "chimes"). Uses `ctx.rotate(PI/4)` around each point.
