**Complex and Social Networks - Lab01**

The purpose of the first exercise is to reproduce a given plot and illustrate the clustering coefficient and average shortest path length as a function of the parameter $p$ of the Watts-Strogatz model. The clustering coefficient and the average shortest path values are adjusted to be within the range 0 to 1 to include both values in one figure.
In our model, a logarithmic sequence of length 14 was used to generate $p$ values, which ranged from $0.0001$ to 1 . (Rewiring probability)
- $L(p)$ is a global attribute that calculates the separation between two vertices.
- $C(p)$ is a local property that assesses a typical neighborhood's cliquishness.
In order to get stable plot for each run of our codes in Rstudio, we had to generate ten random graphs with size 500 and then using the mean values of the average path length and clustering coefficient. Then we normalized the values and plotted the value of $C(p) / C(O)$ and $L(p) / L(O)$. In our codes, the only library package we used for this part of the assignment was the "igraph", and by using the function "sapply" instead of a "For-Loop" we reached a good result in a reasonable execution time by writing a minimum line of codes.
In plot (a), we see the model that we are trying to reproduce, and in the figure next to it, we have shown the result we got in Rstudio.
(a)
Reproduced plot using $\mathrm{R}$
We quantify the structural characteristics of a graph by its characteristic path length $L(p)$ and clustering coefficient $C(p)$ as $p$ grows from zero to one, as shown in the figure below.
In plotted data, $C(p) / C(O)$ - the clustering coefficient of $p$ over the clustering coefficient of zero starts at 1, but it's concave down. It goes out and then curves down toward 0 .
As we used a logarithmic scale on the $\mathrm{x}$-axis, this dropping down to 0 happens pretty quickly. On the other hand, the $C(p) / C(0)$ drops down from 1 to 0 much more slowly than $\mathrm{L}(\mathrm{p}) / \mathrm{L}(0)$. So because it looks sort of concave up and dropping from 1 to 0 and the other one concave down and dropping from 1 to 0 , where the $L(p) / L(0)$ has gotten close to 0 , and the clustering coefficient has remained close to 1 , those pieces give us small-world graphs.
So we can see the clustering coefficient remains high even as the path length drops to 0 quickly. So, graphs produced with $p$ in the middle area of the plot are highly clustered and have a short average distance between vertices.
