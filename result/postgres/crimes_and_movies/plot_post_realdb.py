import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager


plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 22})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True

#store file names
fname = ["post_realdb_runtime_crimes", "post_realdb_runtime_movies"]
#the column in .csv file (each column one line)
num_range = ["No-PS","PS32","PS64","PS400","PS10000"]
num_range2 = ["No-PS","PSMIX"]
#each line color
l_color = ["Red","Deepskyblue","Hotpink","Springgreen","Darkorange"]
l_color2 = ["Red","Olive"]
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink","Darkorange"]

offset = 5
start = 0
plt.figure(figsize=(8,5))
for f in range(len(fname)):
	#current file name
	cur_fn = fname[f]
	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	width = 0.2
	N = len(pop['type'])
	x1 = np.arange(N)
	#x1 = [1,3,5]
	if(f==0):
		for i in range(len(num_range2)):
			y1 = pop[num_range2[i]]
			plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range2[i],color=l_color2[i],bottom=0.1)
			#plt.yscale("log",basey=10)
			plt.legend(loc='upper right',prop={'size': 20})
			#plt.xticks(x1+width*i-0.2, ('CQ1','CQ2'))
	if(f==1):
		x1 = np.array([0,1.5,3])
		for i in range(len(num_range)):
			y1 = pop[num_range[i]]
			plt.bar(2+x1+width*i, y1, width, alpha=0.7, label="" if i == 0 else num_range[i]  ,color=l_color[i],bottom=0.1)
			#plt.yscale("log",basey=10)
			plt.legend(loc='upper right',prop={'size': 27},ncol=2)
			#plt.xticks(x1+width*(i+9)-0.2, ('MQ1','MQ2','MQ3'))
plt.grid(axis='y')
plt.ylabel('Runtime (sec)',fontsize=36)
plt.tick_params(axis='x', which='major', labelsize=30)
plt.tick_params(axis='y', which='major', labelsize=36)
#plt.title('Real Datasets on PostgreSQL')
plt.yticks([0,1,2,3,4,5])
plt.xticks([0.1,1.1,2.4,3.9,5.4], ['C-Q1','C-Q2','M-Q1','M-Q2','M-Q3'])
#plt.xticks(x1, ['CQ1','CQ2','MQ1','MQ2','MQ3'])
print (cur_fn + ".pdf")
	#plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
plt.savefig("./" + "post_realdb_runtime" + ".pdf",format='pdf');
	#clean current plot data
plt.clf();
