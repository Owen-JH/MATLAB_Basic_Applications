function [code]=encode_bfs_string(string)
m=length(string);
F='';
for k=1:m
    if string(k)== ' '
        F=[F,' '];
    else F=[F,encode_bfs(string(k)),' '];
    end
end
[code]=F;
end