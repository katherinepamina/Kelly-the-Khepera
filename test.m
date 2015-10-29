s = restartConnection();

%testing orient toward goal (turn in place)

goal = [2 2];
current = [0 0];

% with grey block -- use this one
% 1: 700
% 2: 600
% 3: 220
% 4: 160
% 5: 150
% 6: 200
% 7: 230
% 8: 230
sensors = zeros(1,8);
while(true)
    sensors = readIR(s);
end

go(s, 2);
while(true)
    sensors = readIR(s)
    %front blocked
    if sensors(3) > 220 || (sensors(4) > 160)
        %turn right
        turn(s,2,0);
    %right blocked
    elseif sensors(5) > 150 || sensors(6) > 200 
        %turn left
        turn(s,0,2);
    elseif sensors(1) > 700 || sensors(2) > 600
        %turn right
        turn(s,2,0);
    end
end
        
        
        


