library("igraph")
install.packages("igraphdata")
install.packages("tidyverse")

library("igraphdata")
data(karate)
plot(karate)

V(karate)
gorder(karate)

plot(layout_in_circle(karate))



#degree distribution

degree(karate)

degree.distribution(karate)

plot(degree.distribution(karate))
library("utils")
plot_dd(karate)


which.max(degree(karate))

which.min(degree(karate))

sort(degree(karate))

tail(sort(degree(karate)))

#network centrality analysis

closeness(karate)   

deg = degree(karate,mode = "all")
hist(deg)

betweenness(karate)
edge_betweenness(karate)

eigen_centrality(karate)

install.packages("network")



#Average Path Length
a = average.path.length(karate)
print(a)

#clustering coefficient

transitivity(karate)

#degree distribution
dlist = degree.distribution(karate,mode = "all",cumulative = T)
plot(x = 0:max(deg),y = dlist, pch = 16,cex = 1.2, col = c(1:20),xlab = "Degree",ylab = "Cumulative Frequency")
lines(x = 0:max(deg),y = dlist, col = "blue")






#community detection
club1 = cluster_label_prop(karate)  #label based propagation 
plot(club1,karate)

club2 = cluster_edge_betweenness(karate) #edge based propagation
plot(club2,karate)

club3 = cluster_fast_greedy(as.undirected(karate))  #modularity optimization
plot(club3,as.undirected(karate))

club3
club2
club1

#Network Cohesion

transitivity(karate)  #clustering coefficient

edge_density(karate)

clique_num(karate)

#Kite

data(kite)

plot(kite)

which.max(degree(kite))
which.max(closeness(kite))
which.max(edge_betweenness(kite))


#koenisberg

data(Koenigsberg)
k =Koenigsberg
plot(k)


#yeast

data(yeast)

#Vertex Centrality

# 1 degree distribution

which.max(degree(yeast))
which.min(degree(yeast))
plot(degree.distribution(yeast))


# 2 Closeness

which.max(closeness(yeast))
which.min(closeness(yeast))
plot(closeness(yeast))


# 3 edge between ness
which.max(edge_betweenness(yeast))
which.min(edge_betweenness(yeast))
plot(edge_betweenness(yeast))


# eigen centrality 




# Network Cohesion

transitivity(yeast)  #clustering coefficient

edge_density(yeast)

clique_num(yeast)

#Community Discovery

club.1 = cluster_edge_betweenness(yeast) #Edge betweeness based
plot(club.1,yeast)


club.2 = cluster_label_prop(yeast)  #label based propagation
plot(club.2,yeast)

clug = cluster_fast_greedy(as.undirected(yeast))  #modularity optimization
plot(clug,as.undirected(yeast))



