function  [dd]=encode_bfs(ch)
M=morse_tree;
W={M{2},M{3}};
code_W={'.','-'};
while ~isempty(W)
    node=W{1};
    dd=code_W{1};
    if ~isempty(node)
        if node{1}==ch
            return;
        end
    end
    W=W(2:end);
    code_W=code_W(2:end);
    if ~isempty(node)
        W=[W,node(2),node(3)];
        code_W=[code_W,[dd,'.'],[dd,'-']];
    end
end
end
