function [P,cliu,stats] = getP(chaoliu,chuli,jianyan)

X = [ones([length(chaoliu)-1 1]) chuli(2:end,:)];
P = zeros(9,6);
stats = zeros(6,4);
for ii = 1:6
    y = chaoliu(2:end,ii);
    [P(:,ii),~,~,~,stats(ii,:)] = regress(y,X);
end

cliu = 0;
if jianyan
    cliu = zeros(32,6);
    cache = [ones(32,1),chuli(2:end,:)];
    P = P';
    for ii=1:6
        cliu(:,ii) = sum(P(ii,:).*cache,2) - chaoliu(2:end,ii);
    end
end