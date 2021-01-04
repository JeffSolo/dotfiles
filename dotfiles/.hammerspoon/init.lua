-- Mike Solomon @msol 2019
-- Edited by Jeff Solomon

local log = hs.logger.new('main', 'info')
DEVELOPING_THIS = false -- set to true to ease debugging

HYPER = {'ctrl', 'shift', 'alt', 'cmd'}

--[[
List of HYPER keys used:
, . ; arrow_keys a b c d e f h i j k l m n o p q s t u w y z
]]

-- App bindings
function setUpAppBindings()
  hyperFocusOrOpen('f', 'Finder')
  hyperFocusOrOpen('b', 'Messages')
  hyperFocus('v', 'Telegram')
  hyperFocusOrOpen('s', 'Code')
  hyperFocusOrOpen('space', 'iTerm')
  hyperFocusOrOpen('w', 'iTunes')
  hyperFocus('d', 'Microsoft Edge')
  hyperFocusOrOpen('e', 'Kiwi for Gmail')
  hyperFocusOrOpen('c', 'Calendar')
  hyperFocusOrOpen('a', 'Slack')
  hyperFocus('x', 'Preview')
end

-- Window management
function setUpWindowManagement()
  hs.window.animationDuration = 0 -- disable animations
  hs.grid.setMargins({0, 0})
  hs.grid.setGrid('2x2')

  function mkSetFocus(to)
    return function() hs.grid.set(hs.window.focusedWindow(), to) end
  end

  local fullScreen = hs.geometry("0,0 2x2")
  local leftHalf = hs.geometry("0,0 1x2")
  local rightHalf = hs.geometry("1,0 1x2")

  local upperHalf = hs.geometry("0,0 2x1")
  local lowerHalf = hs.geometry("0,1 2x1")

  local upperLeft = hs.geometry("0,0 1x1")
  local lowerLeft = hs.geometry("0,1 1x1")
  local upperRight = hs.geometry("1,0 1x1")
  local lowerRight = hs.geometry("1,1 1x1")

  hs.hotkey.bind(HYPER, 'i', mkSetFocus(fullScreen))
  hs.hotkey.bind(HYPER, 'h', mkSetFocus(leftHalf))
  hs.hotkey.bind(HYPER, "l", mkSetFocus(rightHalf))
  hs.hotkey.bind(HYPER, "k", mkSetFocus(upperHalf))
  hs.hotkey.bind(HYPER, "j", mkSetFocus(lowerHalf))
  hs.hotkey.bind(HYPER, "y", mkSetFocus(upperLeft))
  hs.hotkey.bind(HYPER, "n", mkSetFocus(lowerLeft))
  hs.hotkey.bind(HYPER, "u", mkSetFocus(upperRight))
  hs.hotkey.bind(HYPER, "m", mkSetFocus(lowerRight))

  hs.hotkey.bind(HYPER, "up", hs.window.filter.focusNorth)
  hs.hotkey.bind(HYPER, "down", hs.window.filter.focusSouth)
  hs.hotkey.bind(HYPER, "left", hs.window.filter.focusWest)
  hs.hotkey.bind(HYPER, "right", hs.window.filter.focusEast)
  hs.hotkey.bind(HYPER, "q", hs.hints.windowHints)
  -- HYPER "d" -- Bound in Karabiner to Cmd+Tab (application switcher)
  -- HYPER "k" -- Bound in Karabiner to Cmd+` (next window of application)

  -- throw to other screen
  hs.hotkey.bind(HYPER, 'o', function()
    local window = hs.window.focusedWindow()
    window:moveToScreen(window:screen():next())
  end)

  -- throw to other screen
  hs.hotkey.bind(HYPER, 'p', function()
    local window = hs.window.focusedWindow()
    window:moveToScreen(window:screen():previous())
  end)
end

-- focus on the last-focused window of the application given by name, or else launch it
function hyperFocusOrOpen(key, app)
  local focus = mkFocusByPreferredApplicationTitle(true, app)
  function focusOrOpen()
    return (focus() or hs.application.launchOrFocus(app))
  end
  hs.hotkey.bind(HYPER, key, focusOrOpen)
end

-- focus on the last-focused window of the first application given by name
function hyperFocus(key, ...)
  hs.hotkey.bind(HYPER, key, mkFocusByPreferredApplicationTitle(true, ...))
end


-- focus on the last-focused window of every application given by name
function hyperFocusAll(key, ...)
  hs.hotkey.bind(HYPER, key, mkFocusByPreferredApplicationTitle(false, ...))
end


-- creates callback function to select application windows by application name
function mkFocusByPreferredApplicationTitle(stopOnFirst, ...)
  local arguments = {...} -- create table to close over variadic args
  return function()
    local nowFocused = hs.window.focusedWindow()
    local appFound = false
    for _, app in ipairs(arguments) do
      if stopOnFirst and appFound then break end
      log:d('Searching for app ', app)
      local application = hs.application.get(app)
      if application ~= nil then
        log:d('Found app', application)
        local window = application:mainWindow()
        if window ~= nil then
          log:d('Found main window', window)
          if window == nowFocused then
            log:d('Already focused, moving on', application)
          else
            window:focus()
            appFound = true
          end
        end
      end
    end
    return appFound
  end
end


function maybeEnableDebug()
  if DEVELOPING_THIS then
    log.setLogLevel('debug')
    log.d('Loading in development mode')
    -- automatically reload changes when we're developing
    hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/', hs.reload):start()
    hs.alert('Hammerspoon config reloaded')
    log:d('Hammerspoon config reloaded')
  end
end

function setUpClipboardTool()
  ClipboardTool = hs.loadSpoon('ClipboardTool')
  ClipboardTool.show_in_menubar = false
  ClipboardTool:start()
  ClipboardTool:bindHotkeys({
    toggle_clipboard = {HYPER, ";"}
  })
end

function setUpDeepLTranslate()
  DeepLTranslate = hs.loadSpoon('DeepLTranslate')
  -- DeepLTranslate.popup_size = hs.geometry.size(1920, 1080)
  DeepLTranslate.popup_style = hs.webview.windowMasks.utility|hs.webview.windowMasks.HUD|hs.webview.windowMasks.titled|hs.webview.windowMasks.closable|hs.webview.windowMasks.resizable
  DeepLTranslate:bindHotkeys({
    translate = {HYPER, 'z'},
  })
end

-- Main

maybeEnableDebug()
setUpAppBindings()
setUpWindowManagement()
setUpClipboardTool()
setUpDeepLTranslate()
hs.loadSpoon('BingDaily')

local gtranslate = require "modules.gtranslate"
gtranslate.init("GOOGLE_API_KEY", 'en', 'de', HYPER, 't')
