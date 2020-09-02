clear
global clxianzhi P
fhxq = 1052.8; % 负荷需求

load('data1.data.mat')
load('data2.data.mat')
load('data3.data.mat')
load('ppsl.data.mat')

P = getP(chaoliu,chuli,0);

x0 = chuli(1,:)';
A = P(2:end,:)'.*[1;1;-1;1;1;1];
b = clxianzhi(1,:)'.*(clxianzhi(2,:)'+1) - P(1,:)'.*[1;1;-1;1;1;1];
Aeq = [1;1;1;1;1;1;1;1]';
beq = fhxq;
lb = (chuli(1,:)-ppsl*15)';
ub = (chuli(1,:)+ppsl*15)';

x = fmincon('ti5fun',x0,A,b,Aeq,beq,lb,ub);

% 检验

[chaoxian,cliu] = getchaoxian(x,P,clxianzhi);
f = ti5fun(x);

clearvars -global
clear chaoliu chuli clxianzhi duanjia duanronglian ppsl P fpya x0 A b Aeq beq lb ub fhxq