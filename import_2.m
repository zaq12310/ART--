%ͼ��Ԥ����
%�������ݼ�

x=cell(1,14);   %����һ����Ԫ�����飬1��14��Ԫ�� ÿ��Ԫ�ش���һ��ͼƬ

for i=1:14
    imgpath=strcat('E:\����������ҵ\�������ҵ\����ART1�Ľ��㷨�ĺ��ַ���\ͼ��\',num2str(i),'.jpg');
    x{i}=imread(imgpath);
    %����ͼƬ
    thresh = graythresh(x{i});
    %�Զ�ȷ����ֵ����ֵ
    x{i} = im2bw(x{i},thresh);       %��ͼ���ֵ��
end

x=cell2mat(x);       %Ԫ������ת��Ϊ����
x=reshape(x,256,14);      %ת��Ϊ������ ��x�ع���һ��256x13����

x=im2double(x);          %��һ������

save  'data2.mat'  x ;