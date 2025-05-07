#Let Nt be the number of arrivals in the time interval t.
#Let lambda be the rate of arrival.
#The Nt follows poisson distribution with mean lambda*t.

#The interarrival time T1,T2,.....,Tn ie time between two arrivals are iid follow exponential(lambda).

#To simulate a poisson process we will simulate interarrival times from exponential(lambda) distribution.

#The process will start at time t=0 with N0=0.

#First we define the total time T in which we wish to simulate starting from 0.
#Also inititalize rate lambda .

t=50
lambda=2

#Second we simulate interarrival times from exponential(mean=1/lambda) distribution.

Ti=c()
repeat{
  Ti=c(Ti,rexp(1,lambda))
  if(max(cumsum(Ti))>t) break #cumsum() bole toh cumulitive sum.
}
arrival_times=cumsum(Ti)[cumsum(Ti)<t]


#Now we plot the process.
par(col.axis="white",col.lab="white",bg="black")

x=c(0,arrival_times)
y=0:length(arrival_times)
plot(y~x,type="s",xlab="time t",ylab="number of arrivals")

#Lets make the table for the process
Nt=1:length(arrival_times)
interarrival_times=Ti[1:length(Ti)-1]
sum(Ti)
arrival_times
arrival_times=arrival_times

simulation_table=data.frame(Nt,arrival_times,interarrival_times)
print(simulation_table,row.names = FALSE) #printing data frame without index 

#Confirming interaarival times follow exponential distribution
hist(interarrival_times)







