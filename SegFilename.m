%�ļ��а����������Ƶ�ͼƬ��
%000??.bmp,9���ַ���
%000??_m.bmp,11���ַ���
%000??_matte.bmp,15���ַ���
%000??_matte_p.bmp,17���ַ���
clear; close all;
%% settings
folder= 'E:\flickr\23333\��\�ź�';%

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
s=sprintf('��ͼƬ��:%d\n',filelength);
disp(s)

s=sprintf('000??.bmp��:%d\n',count9);
disp(s)
s=sprintf('000??_matte_p.bmp��:%d\n',count17);
disp(s)

s=sprintf('000??_m.bmp��:%d\n',count11);
disp(s)
s=sprintf('000??_matte.bmp��:%d\n',count15);
disp(s)

