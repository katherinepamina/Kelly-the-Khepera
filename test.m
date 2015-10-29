s = restartConnection();

%testing orient toward goal (turn in place)

goal = [2 2];
current = [0 0];

% CONSTANTS
% with grey block -- use this one
% 1: 130
% 2: 116
% 3: 100
% 4: 80
% 5: 100
% 6: 140
% 7: 230
% 8: 230
sensor1High = 130;
sensor2High = 116;
sensor3High = 100;
sensor4High = 80;
sensor5High = 100;
sensor6High = 140;
sensor7High = 230;
sensor8High = 230;

speed = 2;

sensors = zeros(1,8);
% while(true)
%     sensors = readIR(s)
% end

go(s, speed);
while(true)
    sensors = readIR(s)
    %front blocked
    if (sensors(3) > sensor3High) || (sensors(4) > sensor4High)
        %turn right
        turn(s,speed,-speed);
    %right blocked
    elseif (sensors(5) > sensor5High) || (sensors(6) > sensor6High) 
        %turn left
        turn(s,-speed,-speed);
    elseif (sensors(1) > sensor1High) || (sensors(2) > sensor2High)
        %turn right
        turn(s,speed,-speed);
    else
        go(s, speed);
    end
    
end
        
        
        


