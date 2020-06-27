UpCount =0;
DownCount = 0;

Data = Data
lastevent = -10;
for i = 1:length(Data(:,4))
  
   if i-lastevent< 10
       continue
   end
   if Data(i,4)>1.6
       UpCount = UpCount +1;
       lastevent = i
   elseif Data(i,4)<-1.5
       DownCount = DownCount +1;
       lastevent = i
   end
       
end

plot(Data(:,7),Data(:,4))
