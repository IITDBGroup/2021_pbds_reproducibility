import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib.font_manager as font_manager


plt.rcParams['font.family'] = ['Times New Roman']
plt.rcParams.update({'font.size': 20})
plt.rcParams.update({'figure.autolayout': True})
plt.rcParams['axes.axisbelow'] = True

#store file names
fname = ["stack_overflow_runtime"]
#fname = ["post_tpch_1GB_runtime_overview"]
#the column in .csv file (each column one line)
num_range = ["No-PS","PS1k","PS10k"]
#each line color
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink"]
#l_color = ["Deepskyblue","Red"]
l_color = ["Red","purple","Darkorange"]

#the column in .csv file (each column one line)
#num_range = ["PS32","PS64","PS400"]
#each line color
#l_color = ["Red","Springgreen","Hotpink"]
#l_color = ["Deepskyblue","Red","Springgreen","Hotpink","Darkorange"]

plt.figure(figsize=(8,5))
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
			plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0)
			#plt.yscale("log",basey=10)
			#plt.legend().remove()
			#plt.legend(loc='upper center',prop={'size': 21}, ncol=3)
			plt.ylim([0, 65])
			plt.yticks([2,10,20,30,40,50,60])
			plt.xticks(x1+width*i-0.1, ('S-Q1','S-Q2','S-Q3','S-Q4','S-Q5'))
		elif(f==1):
			plt.bar(x1+width*i, y1, width, alpha=0.7, label=num_range[i],color=l_color[i],bottom=0)
			plt.legend().remove()
			plt.yticks([0,1,2,3])
			#plt.legend(loc='upper left',prop={'size': 22}, ncol=2)
			plt.xticks(x1+width*i-0.3, ('Q3','Q10','Q15','Q18','Q21'))
			#plt.legend(loc=8,ncol=2,prop={'size': 6})
		elif(f==2 and i > 0):
			plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0)
			plt.legend(loc='upper left',prop={'size': 24}, ncol=2)
			plt.ylim([0, 8])
			#plt.yticks([0,0.5,1,1.5,2,2.5,3])
			plt.xticks(x1+width*i-0.2, ('Q2','Q3','Q5','Q7','Q8','Q10','Q15','Q17','Q18','Q19','Q20','Q21'))
		elif(f==3):
			plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0)
			#plt.yscale("log",basey=10)
			plt.legend(loc='upper left',prop={'size': 22}, ncol=1)
			plt.xticks(x1+width*i-0.2, ('Q2','Q3','Q10','Q15','Q18','Q19'))
		#elif(f==2):
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 14})
		#else:
		#	plt.bar(x1+width*i, y1, width, alpha=0.5, label=num_range[i],color=l_color[i],bottom=0.001,log=True)
		#	plt.legend(loc='best')
		#	plt.legend(loc='best',prop={'size': 16})


	plt.grid(axis='y')
	if(f==0 or f==2):
		#plt.title('Runtime of TPC-H queries - 1GB Size')
		plt.ylabel('Runtime (sec)',fontsize=36)
	elif(f==1):
		#plt.title('Overhead of TPC-H queries - 1GB Size')
		plt.ylabel('Runtime (sec)',fontsize=36)

	#plt.xticks(x1+width*i-0.1, ('Q3','Q10','Q15','Q17','Q18','Q19','Q20'))
	plt.tick_params(axis='x', which='major', labelsize=36)

	if(f==2):
		plt.tick_params(axis='y', which='major', labelsize=36)
	else:
		plt.tick_params(axis='y', which='major', labelsize=36)
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
