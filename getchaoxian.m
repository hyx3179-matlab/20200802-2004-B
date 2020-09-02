function [chaoxian,cliu] = getchaoxian(fpya,P,clxianzhi)

cli = sum(fpya,2);
cliu = sum(P.*[1;cli]);
chaoxian = (abs(cliu) - clxianzhi(1,:))./abs(clxianzhi(1,:)) * 100;