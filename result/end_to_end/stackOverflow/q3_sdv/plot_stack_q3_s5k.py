import matplotlib.pyplot as plt
import pandas as pd
from matplotlib.ticker import FuncFormatter
import matplotlib.font_manager as font_manager
import numpy as np

#global font setting
plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 20})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True
plt.figure(figsize=((8.0/7.0)*6,5))

#store file names
#store file names
fname = ["stack_q3_s5k_results"]
#store normal query costs
#n_costs = [3.269,3.269]
#64.96
#the column in .csv file (each column one line)
num_range = ["No-PS","adaptive"]
#each line color
l_color = ["Red","Deepskyblue","green"]


for i in range(len(fname)):
	#current file name
	cur_fn = fname[i]

	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	#pop.plot(marker='h',lw=2)

	N = len(pop['num'])
	x1 = np.arange(N)
	for j in range(len(num_range)):
		y1 = pop[num_range[j]]
		#since no log0, so use x2[y2>0],y2[y2>0] -> only plot y-axis > 0 to skip log0
		#plt.plot(x1[y1>0],y1[y1>0],marker='h',lw=2,color=l_color[j],label=num_range[j])
		#plt.plot(x1,y1,marker='h',lw=1,color=l_color[j],label=num_range[j],linestyle='dashed')
		plt.plot(x1,y1,lw=1.2,color=l_color[j],label=num_range[j])


	#plt.axhline(y=n_costs[i], linewidth=2, color='sienna',linestyle=':',label="normal")

	#label name
	plt.xlabel("Number of Iterations",fontsize=34)
	plt.ylabel("Runtime (sec)",fontsize=34)

	#plt.title(cur_fn[0:2].upper() + " - Running Time on Different Scale of the Input ("+ d_size + ")")
	plt.tick_params(axis='x', which='major', labelsize=25)
	plt.tick_params(axis='y', which='major', labelsize=25)
	plt.yticks([0,2000,4000,6000,8000,10000],['0','2,000','4,000','6,000','8,000','10,000'])

	#set x-axis value
	#plt.xticks([0,1,2,3,4,5,6,7], ['73','2k','4k','6k','8k','10k','12k','14k']);
	#,fontproperties='STKAITI'
	plt.grid(axis='y')
	#check if the runtime is small, use scale for y-axis
	#if (cur_fn.find("1gb") != -1 and cur_fn.find("q1") != -1):
	#if (n_costs[i] <= 6 and cur_fn.find("zone") == -1):
	#	plt.yscale('log',basey=10)
	#plt.yscale('log',basey=10)
	#plt.yscale('log',basey=10)
	#legend setting
	#font = font_manager.FontProperties(family='Comic Sans MS',
	#								   weight='bold',
    #                               	   style='normal', size=16)
	if(i == 0):
		plt.legend(loc = "upper left",prop={'size': 26})
	elif(i==1):
		plt.legend(loc = "upper left",prop={'size': 20})
	elif(i==2):
		plt.legend(loc = "upper left",prop={'size': 21})
	#plt.legend()
	#plt.show()

	#save each plot to pdf
	print (cur_fn + ".pdf")
	plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
	#clean current plot data
	plt.clf();



	###################
	#old plot only work for python 2.7 (above can work on python 3.6 also)
	###################
	#read data to pop
	#pop = pd.read_csv(cur_fn + ".csv",index_col='type')
	#plot each line and the hline
	#if (cur_fn.find("zone") != -1):
	#	plt.plot(pop['zone'],marker='h',lw=2,color="Deepskyblue",label="zone")
	#else:
	#	plt.plot(pop['H32'],marker='h',lw=2,color="Deepskyblue",label="H32")
	#	plt.plot(pop['H64'],marker='h',lw=2,color="Red",label="H64")
	#	plt.plot(pop['H96'],marker='h',lw=2,color="Springgreen",label="H96")
	#	plt.plot(pop['H128'],marker='h',lw=2,color="Hotpink",label="H128")
	#	plt.plot(pop['H256'],marker='h',lw=2,color="Darkorange",label="H256")
