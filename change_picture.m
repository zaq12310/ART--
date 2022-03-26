
%将不同大小的图像转换成统一大小，并且改变格式
ObjDir = 'E:\计算智能作业\第五次作业\基于ART1改进算法的汉字分类\原始图像\';%将被改变的图像地址，称为目标地址
OtpDir = 'E:\计算智能作业\第五次作业\基于ART1改进算法的汉字分类\图像\';%输出图像地址，称为输出地址
for i = 1:1:14%我的图像标号是1到14
    bgFile = [ObjDir,num2str(i),'.jpg'];%这句话读取目标地址里面的格式为png的图片
    %num2str是先把数字i转换成string然后补零直到八位
    %举个例子：i=13,num2str(i,'%08d)=00000013,类型是string
    bgFile = imread(bgFile);%把图片读成matlab认识的，类型为：图片
    img = imresize(bgFile,[16,16]);%调整大小到高16，长16
    filename=[num2str(i),'.jpg'];%输出的图片名称是1.jpg
    path=fullfile(OtpDir,filename);%输出的路径
    imwrite(img,path,'jpg');%以jpg格式输出出去
end