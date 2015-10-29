function pressed = spacePressed()
% Returns true if the space key has been pressed
ch = keyPressFcn; %not working

if ch == 32
    pressed = TRUE;
else
    pressed = FALSE;
end

end

