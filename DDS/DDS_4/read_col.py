'''
Author: Moerjie
Data: Do not edit
Github: https://github.com/moerjie
LastEditTime: 2023-09-18 21:17:02
FilePath: \DDS_4\read_col.py
'''
with open('stp1_auto_signaltap_0.txt', 'r')as f:
    lines = f.readlines()
    for line in lines:
        cols = line.split()  # 以空格为分隔符，分割每一行数据
        # print(cols)
        for col in cols:
            print(col)  # 并输出每一列的数据
