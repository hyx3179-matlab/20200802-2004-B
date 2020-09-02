function f = ti4fun(x)
global fpya duanjia duanronglian qingsuanjia

xuneironlian = x-fpya;

f = (x(1)>fpya(1))*(x(1)<sum(duanronglian(1,1:10))) * xuneironlian(1)*(duanjia(1,10)-qingsuanjia);
f = f+ ((x(2)>fpya(2))*(x(2)<sum(duanronglian(2,1:7)))+x(2)>sum(duanronglian(2,1:7))) * xuneironlian(2)*(duanjia(2,7)-qingsuanjia);
f = f+ ((x(2)>fpya(2))*(x(2)<sum(duanronglian(2,1:10)))+x(2)>sum(duanronglian(2,1:10))) * xuneironlian(2)*(duanjia(2,10)-qingsuanjia);
f = f+ ((x(3)>fpya(3))*(x(3)<sum(duanronglian(3,1:7)))+x(3)>sum(duanronglian(3,1:7))) * xuneironlian(3)*(duanjia(3,7)-qingsuanjia);
f = f+ ((x(3)>fpya(3))*(x(3)<sum(duanronglian(3,1:8)))+x(3)>sum(duanronglian(3,1:8))) * xuneironlian(3)*(duanjia(3,8)-qingsuanjia);
f = f+ ((x(5)>fpya(5))*(x(5)<sum(duanronglian(5,1:8)))+x(5)>sum(duanronglian(5,1:8))) * xuneironlian(5)*(duanjia(5,8)-qingsuanjia);
f = f+ ((x(5)>fpya(5))*(x(5)<sum(duanronglian(5,1:9)))+x(5)>sum(duanronglian(5,1:9))) * xuneironlian(5)*(duanjia(5,9)-qingsuanjia);
f = f+ ((x(5)>fpya(5))*(x(5)<sum(duanronglian(5,1:10)))+x(5)>sum(duanronglian(5,1:10))) * xuneironlian(5)*(duanjia(5,10)-qingsuanjia);
f = f+ ((x(6)>fpya(6))*(x(6)<sum(duanronglian(6,1:7)))+x(6)>sum(duanronglian(6,1:7))) * xuneironlian(6)*(duanjia(6,7)-qingsuanjia);
f = f+ ((x(6)>fpya(6))*(x(6)<sum(duanronglian(6,1:8)))+x(6)>sum(duanronglian(6,1:8))) * xuneironlian(6)*(duanjia(6,8)-qingsuanjia);
f = f+ ((x(7)>fpya(7))*(x(7)<sum(duanronglian(7,1:6)))+x(7)>sum(duanronglian(7,1:6))) * xuneironlian(7)*(duanjia(7,6)-qingsuanjia);

f = 303 * sum(xuneironlian(xuneironlian>0)) + f;
f = f/8;