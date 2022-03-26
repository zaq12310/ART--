# ART--
基于ART1改进算法的汉字识别

2）基于ART1改进算法的汉字识别
采用ART1改进算法，相似度的计算采用

![image](https://user-images.githubusercontent.com/92127845/160222524-f34e2c88-65c6-49bc-82e0-bb17b1f34fa3.png)



分成两类输入，A与B样本输入的顺序刚好相反
运行picture_change.m将原始图像转化成16×16大小的图像
运行import_2.m，将转化后的图像转化成矩阵x，并将x存入data2.m

该神经网络的阈值（warn）设置为0.95
运行exam5_2.m，执行ART1改进算法将汉字分类
输出中每一行代表一个汉字
样本1（样本集A） 的输入顺序为:
图、炀、围、枕、图(含噪音) 、机、固、板、汤、杨、圈、机(含噪音) 、杠、汤 ( 含噪音) 。
样本集1为样本集A

![image](https://user-images.githubusercontent.com/92127845/160222530-f8a37818-e843-417f-9cc9-0674a0a07171.png)


样本集2（B样本集）为逆序的样本集1（A样本集）

![image](https://user-images.githubusercontent.com/92127845/160222541-1892a011-be35-49f6-9478-56bd9f4c99a9.png)


结论：该神经网络可以识别不同的字，并且可以排除轻微噪音的影响从而分类出相同的字
