clc;clear all;close all;
load crossing
plot(crossing(1:92,1),crossing(1:92,2),'*b');hold on;
for count = 1:92
   switch crossing(count, 5)
      case 2
         plot(crossing(count,1),crossing(count,2),'or');hold on;
      case 3
         plot(crossing(count,1),crossing(count,2),'*r');hold on;
      case 4
         plot(crossing(count,1),crossing(count,2),'or');hold on;
         plot(crossing(count,1),crossing(count,2),'*r');hold on;
   end
end
save crossing;
