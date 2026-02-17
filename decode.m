function [ ch ] = decode( dd )
%字母morse密码解码
%输入变量：字符数组dd为某个字母morse码
%输出变量：ch为解码后的字母
M=morse_tree;
n=length(dd);
for k=1:n
    if dd(k)=='.'
        M=M{2};
    elseif dd(k)=='-'
        M=M{3};
    end
    if isempty(M)
        ch='*';
        return;
    end
end
ch=M{1};
end
