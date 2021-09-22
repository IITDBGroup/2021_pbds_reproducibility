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
fname = ["bitor"]
#store normal query costs
#n_costs = [3.269,3.269]
#64.96
#the column in .csv file (each column one line)
num_range = ["bitor","delay","delay+no-copy"]

#each line color
l_color = ["Deepskyblue","Red","green"]
#Spring
for i in range(len(fname)):
	#current file name
	cur_fn = fname[i]

	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	#pop.plot(marker='h',lw=2)
	#plot each line and the hline
	if (cur_fn.find("zone") != -1):
		plt.plot(pop['zone'],marker='h',lw=2,color="Deepskyblue",label="zone")
	else:
		N = len(pop['type'])
		x1 = np.arange(N)
		for j in range(len(num_range)):
			y1 = pop[num_range[j]]
			#since no log0, so use x2[y2>0],y2[y2>0] -> only plot y-axis > 0 to skip log0
			plt.plot(x1[y1>0],y1[y1>0],marker='h',lw=2,color=l_color[j],label=num_range[j])
			plt.grid(axis='y')

	#plt.axhline(y=n_costs[i], linewidth=2, color='sienna',linestyle=':',label="normal")

	#label name
	plt.xlabel("Number of Fragments",fontsize=36)
	plt.ylabel("Runtime (sec)",fontsize=36)
	plt.yticks([0,0.1,0.2,0.3,0.4,0.5])

	#extract 1gb or 10gb to construct the title name
	d_size = ""
	if (cur_fn.find("1gb") != -1):
		d_size = "1GB"
	else:
		d_size = "10GB"

	#plt.title(cur_fn[0:2].upper() + " - Running Time on Different Scale of the Input ("+ d_size + ")")
	plt.tick_params(axis='x', which='major', labelsize=26.5)
	plt.tick_params(axis='y', which='major', labelsize=36)
	#set x-axis value
	plt.xticks([0,1,2,3,4,5,6,7,8], ['32','64','96','128','256','400','1k','4k','10k']);
	#,fontproperties='STKAITI'

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
		plt.legend(loc = "upper left",prop={'size': 27})
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
