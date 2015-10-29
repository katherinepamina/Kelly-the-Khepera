function s = restartConnection()
% deletes all open connections and reopens connection
delete(instrfindall);
s = openConnection();

end

