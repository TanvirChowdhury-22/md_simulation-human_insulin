#  Calculation of mean energy  and fluctuations
#  

{
	     dy[NR,1] = $4
	     }
END{ 

ni = 1 
sum=0.0
mf=0.0

while (ni <= NR) {
#        printf("%8.3f \n ",dy[ni,1])
	sum=sum+dy[ni,1]
	ni = ni + 1
	}
	mean=sum/NR
ni = 1
while (ni <= NR) {
	mf = mf + (dy[ni,1]-mean)^2
	ni = ni + 1
	}
	mf=sqrt((mf/(NR-1)))

printf(" Average E   Fluctuation   Ratio \n")
printf(" %8.3f    %8.3f    %8.3e \n", mean, mf, mf/sqrt(mean*mean))
}

