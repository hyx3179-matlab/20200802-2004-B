function [fpya,Y,qingsuanjia] = getfpya(chuli,ppsl,duanjia,duanronglian,fhxq)

cljx = chuli(1,:)+ppsl*15;

for jj = 1:8
    for ii = 1:10
        cache = cljx(jj)-sum(duanronglian(jj,1:ii));
        if cache < 0
            duanronglian(jj,ii) = duanronglian(jj,ii)+cache;
            if ii<10
                duanronglian(jj,ii+1:end) = 0;
            end
        end
    end
end
cache=0;

duanjialie = duanjia(:);

while cache < fhxq
    [jia,I] = min(duanjialie);
    duanjialie(I) = inf;
    cache = cache+duanronglian(I);
end


fpya = duanronglian.*not(duanjia>jia);
fpya = fpya - (duanjia==jia) * (cache - fhxq);
Y = sum(not(duanjia>jia),2);
qingsuanjia = jia;
