require "keybow"


function modifier(key, ...)
    for i = 1, select('#', ...) do
        local j = select(i, ...)
        keybow.set_modifier(j, keybow.KEY_DOWN)
    end
    keybow.tap_key(key)
    for i = 1, select('#', ...) do
        local j = select(i, ...)
        keybow.set_modifier(j, keybow.KEY_UP)
    end
end
-- Standard number pad mapping --

-- Key mappings --

function handle_key_00(pressed)
    if pressed then
      modifier(0x30, keybow.RIGHT_ALT)
      keybow.tap_key(keybow.SPACE)
    end
end

function handle_key_01(pressed)
    if pressed then
      modifier("8",  keybow.RIGHT_ALT, keybow.RIGHT_SHIFT)
    end
end

function handle_key_02(pressed)
   if pressed then
      modifier("9",  keybow.RIGHT_ALT, keybow.RIGHT_SHIFT)
    end
end

function handle_key_03(pressed)
  if pressed then
    modifier("7",  keybow.RIGHT_ALT)
  end
end

function handle_key_04(pressed)
    if pressed then
      modifier("8",  keybow.RIGHT_ALT)
    end
end

function handle_key_05(pressed)
   if pressed then
      modifier("9",  keybow.RIGHT_ALT)
    end
end

function handle_key_06(pressed)
  if pressed then
    modifier("7",  keybow.RIGHT_SHIFT)
  end
end

function handle_key_07(pressed)
    if pressed then
      modifier(0x35)
    end
end

function handle_key_08(pressed)
  if pressed then
    modifier(0x35,keybow.RIGHT_SHIFT)
  end
end

function handle_key_09(pressed)
  if pressed then
    modifier("7",  keybow.RIGHT_SHIFT,keybow.RIGHT_ALT)
  end
end

function handle_key_10(pressed)
  if pressed then
    modifier("8",  keybow.RIGHT_SHIFT)
  end
end

function handle_key_11(pressed)
  if pressed then
    modifier("9",  keybow.RIGHT_SHIFT)
  end
end
