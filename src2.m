clc;clear all;close all;
C;
load crossing;
for count = 1:92
   
   close all;
   disp(count);
   plot(crossing(1:20,1),crossing(1:20,2),'or');
   hold on;
   plot(crossing(21:92,1),crossing(21:92,2),'ob');
   hold on;
   plot(crossing(count,1),crossing(count,2),'*r');
   hold on;
   key = input('1=普通路口，2=警局，3=干线，4=警局+干线\n');
   crossing(count,5) = key;
   
end
close all;

for count = 1:92
   switch crossing(count, 5)
      case 1
         plot(crossing(count,1),crossing(count,2),'ob');
      case 2
         plot(crossing(count,1),crossing(count,2),'or');
      case 3
         plot(crossing(count,1),crossing(count,2),'*r');
      case 4
         plot(crossing(count,1),crossing(count,2),'or');
         plot(crossing(count,1),crossing(count,2),'*r');
   end
end
save crossing;
