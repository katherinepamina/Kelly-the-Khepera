function blocked = blockedByObstacle(  )
% Returns true if there is an obstacle blocking one of the sensors
% with wooden block
% 1: 600
% 2: 640
% 3: 440
% 4: 375
% 5: 400
% 6: 615
% 7: 680
% 8: 580
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

blocked = false; 
sensors = zeros(1,8);
sensors = readIR(s)
%front blocked
if (sensors(3) > sensor3High) || (sensors(4) > sensor4High)
    blocked = true;
%right blocked
elseif (sensors(5) > sensor5High) || (sensors(6) > sensor6High) 
    blocked = true;
%left blocked
elseif (sensors(1) > sensor1High) || (sensors(2) > sensor2High)
    blocked = true;
else
    go(s, speed);
end
    
