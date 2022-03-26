%图像预处理
%导入数据集

x=cell(1,14);   %建立一个空元胞数组，1行14个元素 每个元素代表一个图片

for i=1:14
    imgpath=strcat('E:\计算智能作业\第五次作业\基于ART1改进算法的汉字分类\图像\',num2str(i),'.jpg');
    x{i}=imread(imgpath);
    %导入图片
    thresh = graythresh(x{i});
    %自动确定二值化阈值
    x{i} = im2bw(x{i},thresh);       %对图像二值化
end

x=cell2mat(x);       %元胞数组转化为矩阵
x=reshape(x,256,14);      %转换为样本集 将x重构成一个256x13数组

x=im2double(x);          %归一化处理

save  'data2.mat'  x ;