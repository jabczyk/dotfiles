// https://stackblitz.com/github/evan-liu/karabiner.ts/tree/main/editor?embed=1&file=rules.js&hideExplorer=1&hideNavigation=1&terminalHeight=20&title=karabiner.ts%20editor

// prettier-ignore
import {
  // rule and layers
  rule, layer, simlayer, hyperLayer, modifierLayer, duoLayer,
  // from / map()
  map, mapConsumerKey, mapPointingButton, mapSimultaneous, mapDoubleTap, mouseMotionToScroll,
  // to
  toKey, toConsumerKey, toPointingButton, toHyper, toSuperHyper, toMeh, to$, toApp, toPaste, toTypeSequence, toNone, toNotificationMessage, toRemoveNotificationMessage, toInputSource, toSetVar, toMouseKey, toMouseCursorPosition, toStickyModifier, toCgEventDoubleClick, toSleepSystem,
  // conditions
  ifApp, ifDevice, ifVar, ifDeviceExists, ifInputSource, ifKeyboardType, ifEventChanged,
  // utils
  withCondition, withMapper, withModifier, modifierKeyAliases, multiModifierAliases
} from 'karabiner.ts'

const APP_KEYS = {
  a: toApp('Arc'),
  s: toApp('Spotify'),
  d: toApp('Discord'),
  c: toApp('Visual Studio Code'),
  t: toApp('Terminal'),
  b: toApp('DBeaver'),
  p: toApp('Postman'),
  n: toApp('Obsidian'),
  h: toApp('Termius'),
  i: toApp('TickTick'),
  m: toApp('Messages'),
  e: toApp('Telegram'),
  f: toApp('Finder'),
}

export const rules = () => [
  rule('Caps Lock -> Esc').manipulators([
    map('caps_lock').to('escape')
  ]),

  rule('Right Command -> Launch Apps').manipulators([
    withModifier('right_command')(APP_KEYS)
  ]),
]
