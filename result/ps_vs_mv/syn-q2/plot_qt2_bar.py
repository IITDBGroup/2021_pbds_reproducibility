import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager


plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 22}) 
plt.rcParams.update({'figure.autolayout': True})

#store file names
fname = ["template2_1"]
#fname = ["view_size_40m_selectivity"]
#the column in .csv file (each column one line)
num_range = ["No-PS","PS","MV","PS-on-MV","MV+PS"]
#each line color
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink"]
l_color = ["Red","Deepskyblue","orange","green","violet"]
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink","Darkorange"]

plt.figure(figsize=(8,5)) 
for f in range(len(fname)):
	#current file name
	cur_fn = fname[f]
	#read data to pop
	pop = pd.read_csv(cur_fn + ".csv")
	width = 0.15  
	N = len(pop['num'])
	x1 = np.arange(N)
	for i in range(len(num_range)):
		y1 = pop[num_range[i]]
		#if(f==0):
		plt.bar(x1+width*i-0.3, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.01)
		plt.yscale("log",base=10)
		plt.legend(loc='lower right',prop={'size': 20}, ncol=1, facecolor='white', framealpha=1)
		#plt.xticks(x1+width*i-0.2, ('Q3','Q10','Q15','Q18'))
		plt.xticks([0,1,2,3,4,5,6], ['0.001%','0.01%','0.1%','1%','5%','10%','20%']);
		#plt.ylim([0.1, 100])
			#plt.legend(loc=8,ncol=2,prop={'size': 6})
		#elif(f==1 and i>0):
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.01)
		#	plt.legend(loc='upper left',prop={'size': 25})
		#	#plt.ylim([1, 2.5])
			#plt.yticks([1,1.5,2,2.5])
			#plt.xticks(x1+width*i-0.1, ('Q3','Q10','Q15','Q18'))
		#	plt.xticks([0,1,2,3,4,5,6], ['0.001%','0.01%','0.1%','1%','5%','10%','20%']);
		#elif(f==2):
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 14})
		#else:
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')	
		#	plt.legend(loc='best',prop={'size': 16})		


	
	i#f(f==0):
		#plt.title('Runtime of TPC-H queries - 10GB Size')
	plt.ylabel('Runtime', fontsize=30)
	#elif(f==1):
		#plt.title('Overhead of TPC-H queries - 10GB Size')
	#	plt.ylabel('Overhead', fontsize=30)
		
	#plt.xticks(x1+width*i-0.1, ('Q3','Q10','Q15','Q18'))
	plt.tick_params(axis='x', which='major', labelsize=20)
	plt.tick_params(axis='y', which='major', labelsize=30)

	#plt.legend(loc='best',ncol=2)
	#font = font_manager.FontProperties(family='Comic Sans MS',
	#								   weight='bold',
    #                               	   style='normal', size=16)
	#plt.legend(loc = "upper right",prop=font)
	#plt.show()
	#save each plot to pdf
	print (cur_fn + "_bar.pdf")
	#plt.savefig("./" + cur_fn + ".pdf",dpi=600,format='pdf');
	plt.savefig("./" + cur_fn + "_bar.pdf",format='pdf');
	#clean current plot data
	plt.clf();