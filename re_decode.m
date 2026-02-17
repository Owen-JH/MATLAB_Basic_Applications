[code]=encode_bfs_string('NICE TO MEET YOU');
n=length(code);
W='';
a='';
for k=1:n
    if code(k)~=' '
    a=strcat(a,code(k));
    elseif code(k-1)==' '&&code(k)==' '
        W=[W,' '];
    else W=[W,decode(a)];
        a='';
    end
end
W


