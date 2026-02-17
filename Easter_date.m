year=2022;
Easter=zeros(1,2);
Golden_num=mod(year,19)+1;
Century_num=floor(year/100)+1;
Revise_golden_num=floor(Century_num*3/4)-12;
Revise_century_num=floor((Century_num*8+5)/25)-5;
Day=floor(year*5/4)-Revise_golden_num-10;
Epact=mod(Golden_num*11+20+Revise_century_num-Revise_golden_num,30);
if Epact==24
    Epact=Epact+1;
else if Epact==25&&Golden_num>11
    Epact=Epact+1;
    end
end
Sunday=44-Epact;
if Sunday<21
    Sunday=Sunday+30;
end
Fullmoon=Sunday+7-mod((Day+Sunday),7);
if Fullmoon>31
    Easter(1)=4
    Easter(2)=Fullmoon-31
else Easter(1)=3
    Easter(2)=Fullmoon
end
    