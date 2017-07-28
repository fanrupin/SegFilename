%文件中包含四类名称的图片：
%000??.bmp,9个字符；
%000??_m.bmp,11个字符；
%000??_matte.bmp,15个字符；
%000??_matte_p.bmp,17个字符；
clear; close all;
%% settings
folder= 'E:\flickr\23333\竖\九号';%

%% initialization
data = zeros(320, 240, 3, 1);
label = zeros(320, 240, 1, 1);
%padding = abs(size_input - size_label)/2;
count9 = 0;
count11 = 0;
count15 = 0;
count17 = 0;

%% generate data
filepaths= dir(fullfile(folder,'*.bmp'));
filelength =length(filepaths);
for i = 1 : filelength
    
    filename=filepaths(i).name;
    if length(filename)==9
        count9=count9+1;
    end
    if length(filename)==11
         count11=count11+1;
    end
    if length(filename)==15
         count15=count15+1;
    end
     if length(filename)==17
         count17=count17+1;
     end
      
   
end

disp(folder)
s=sprintf('总图片数:%d\n',filelength);
disp(s)

s=sprintf('000??.bmp数:%d\n',count9);
disp(s)
s=sprintf('000??_matte_p.bmp数:%d\n',count17);
disp(s)

s=sprintf('000??_m.bmp数:%d\n',count11);
disp(s)
s=sprintf('000??_matte.bmp数:%d\n',count15);
disp(s)

