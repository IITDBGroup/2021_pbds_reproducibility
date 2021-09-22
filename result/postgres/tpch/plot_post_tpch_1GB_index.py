import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager
from matplotlib.ticker import FuncFormatter
from matplotlib.font_manager import FontProperties


plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 30})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True

#store file names
fname = ["post_tpch_1GB_runtime_index"]
#fname = ["post_tpch_1GB_runtime_overview"]
#the column in .csv file (each column one line)
num_range = ["NOR","PS32","PS64","PS400","PS4000","PS10000","PS100000"]
#each line color
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink"]
#l_color = ["Deepskyblue","Red"]
l_color = ["Red","Deepskyblue","Hotpink","Springgreen","Black","Darkorange","Blue"]
#Deepskyblue
#the column in .csv file (each column one line)
#num_range = ["PS32","PS64","PS400"]
#each line color
#l_color = ["Red","Springgreen","Hotpink"]
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink","Darkorange"]

plt.figure(figsize=((8.0/7.0)*6,5))
for f in range(len(fname)):
	#current file name
	cur_fn = fname[f]
	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	width = 0.12
	N = len(pop['query'])
	x1 = np.arange(N)
	plt.grid(axis='y')


	for i in range(len(num_range)):
		y1 = pop[num_range[i]]
		plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0)
		#plt.yscale("log",basey=10)
		# plt.legend(loc='upper left',prop={'size': 24}, ncol=1)
		plt.legend().remove()
		plt.xticks(x1+width*i-0.3, ('Q2','Q3','Q10','Q15','Q18','Q19'))
		#plt.ylim([0.01, 100])
		plt.yticks([0,1,2,3,4])
		#elif(f==2):
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 14})
		#else:
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 16})




	plt.ylabel('Runtime (sec)',fontsize=30)

	#plt.xticks(x1+width*i-0.1, ('Q3','Q10','Q15','Q17','Q18','Q19','Q20'))
	plt.tick_params(axis='x', which='major', labelsize=30)

	if(f==2):
		plt.tick_params(axis='y', which='major', labelsize=30)
	else:
		plt.tick_params(axis='y', which='major', labelsize=30)
	#plt.legend(loc='best',ncol=2)
	#font = font_manager.FontProperties(family='Comic Sans MS',
	#								   weight='bold',
    #                               	   style='normal', size=16)
	#plt.legend(loc = "upper right",prop=font)
	#plt.show()
	#save each plot to pdf
	print (cur_fn + ".pdf")
	#plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
	plt.savefig("./" + cur_fn + ".pdf",format='pdf');
	#clean current plot data
	plt.clf();
