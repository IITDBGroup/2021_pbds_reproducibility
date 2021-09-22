import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager
from matplotlib.ticker import ScalarFormatter

plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 30})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True

#store file names
#fname = ["post_tpch_10GB_runtime_overview"]
fname = ["post_tpch_10GB_runtime","post_tpch_10GB_capture"]
#the column in .csv file (each column one line)
num_range = ["NOR","PS32","PS64","PS400","PS4000","PS10000","PS100000"]
#each line color
#l_color = ["Deepskyblue","Red"]
l_color = ["Red","Deepskyblue","Hotpink","Springgreen","Black","Darkorange","Blue"]

plt.rcParams["figure.figsize"] = (8,5)
fig = plt.figure()
for f in range(len(fname)):
	#current file name
	cur_fn = fname[f]
	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	width = 0.12
	N = len(pop['query'])
	x1 = np.arange(N)
	for i in range(len(num_range)):
		y1 = pop[num_range[i]]
		if(f==0):
			plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0.01)
			#plt.yscale("log",basey=10)
			# plt.legend(loc='upper left',prop={'size': 24}, ncol=1)
			plt.legend().remove()
			plt.xticks(x1+width*i-0.36, ('Q2','Q3','Q10','Q18','Q19','Q20','Q21'))
			#plt.legend(loc=8,ncol=2,prop={'size': 6})
		elif(f==1 and i>0):
			plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0.01)
			# plt.legend(loc='upper center',prop={'size': 22}, ncol=2)
			plt.legend().remove()
			plt.yscale("log",basey=10)
			plt.ylim([0.01, 100])
			#plt.yticks([0,0.5,1,1.5])
			plt.yticks([0.01,0.1,1,10],['1%','10%','100%','1000%'])
			plt.xticks(x1+width*i-0.3, ('Q2','Q3','Q10','Q18','Q19','Q20','Q21'))
		#elif(f==2):
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 14})
		#else:
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 16})


	plt.grid(axis='y')
	if(f==0):
		#plt.title('Runtime of TPC-H queries - 10GB Size')
		plt.ylabel('Runtime (sec)', fontsize=30)
	elif(f==1):
		#plt.title('Overhead of TPC-H queries - 10GB Size')
		plt.ylabel('Relative overhead', fontsize=30)

	#plt.xticks(x1+width*i-0.1, ('Q3','Q10','Q15','Q18'))
	plt.tick_params(axis='x', which='major', labelsize=29)
	plt.tick_params(axis='y', which='major', labelsize=30)

	# if(f==1):
	# 	  plt.ax.yaxis.set_major_formatter(ScalarFormatter())
#FormatStrFormatter('%.2f')
	#plt.legend(loc='best',ncol=2)
	#font = font_manager.FontProperties(family='Comic Sans MS',
	#								   weight='bold',
    #					   style='normal', size=16)
	#plt.legend(loc = "upper right",prop=font)
	#plt.show()
	#save each plot to pdf
	print (cur_fn + ".pdf")
	#plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
	plt.savefig("./" + cur_fn + ".pdf",format='pdf');
	#clean current plot data
	plt.clf();
