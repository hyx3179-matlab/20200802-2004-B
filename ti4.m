clear
load('data1.data.mat')
load('data2.data.mat')
load('data3.data.mat')
load('ppsl.data.mat')

P = getP(chaoliu,chuli,0);
fpya = getfpya(chuli,ppsl,duanjia,duanronglian,982.4);

[chaoxian,cliu] = getchaoxian(fpya,P,clxianzhi);

clear chaoliu chuli clxianzhi duanjia duanronglian ppsl