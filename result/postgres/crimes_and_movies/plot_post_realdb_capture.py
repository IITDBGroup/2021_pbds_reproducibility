import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager


plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 20})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True

#store file names
fname = ["post_realdb_capture_crimes", "post_realdb_capture_movies"]
#the column in .csv file (each column one line)
num_range = ["NOR","PS32","PS64","PS400","PS10000"]
num_range2 = ["NOR","PSMIX"]
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
	if(f==0):
		for i in range(len(num_range2)):
			if(i>0):
				y1 = pop[num_range2[i]]
				plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range2[i],color=l_color2[i],bottom=0)
				#plt.yscale("log",basey=10)
				plt.legend(loc='upper center',prop={'size': 21.5}, ncol=2)
				#plt.xticks(x1+width*i-0.2, ('CQ1','CQ2'))
	if(f==1):
		for i in range(len(num_range)):
			if(i>0):
				y1 = pop[num_range[i]]
				plt.bar(x1+width*(i+9), y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0)
				#plt.yscale("log",basey=10)
				plt.legend(loc='upper center',prop={'size': 25},ncol=2)
				plt.ylim([0, 6])
				#plt.xticks(x1+width*(i+9)-0.2, ('MQ1','MQ2','MQ3'))

plt.grid(axis='y')
plt.ylabel('Relative overhead',fontsize=36)
plt.tick_params(axis='x', which='major', labelsize=30)
plt.tick_params(axis='y', which='major', labelsize=36)
#plt.title('Real Datasets on PostgreSQL')
plt.yticks([0,1,2,3,4,5],['0','100%','200%','300%','400%','500%'])
plt.xticks([0.2,1.2,2.3,3.3,4.3], ['C-Q1','C-Q2','M-Q1','M-Q2','M-Q3'])
#plt.yticks([1,2,3,4,5,6,7,8,9,10,11,12])
#plt.xticks(x1, ['CQ1','CQ2','MQ1','MQ2','MQ3'])
print (cur_fn + ".pdf")
	#plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
plt.savefig("./" + "post_realdb_capture" + ".pdf",format='pdf');
	#clean current plot data
plt.clf();
