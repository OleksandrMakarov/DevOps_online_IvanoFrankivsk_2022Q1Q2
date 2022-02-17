# Module 3
## Task 3.1
Download *.pkt file <a id="raw-url" href="???????????????">Makarov_Task3.2</a>

#### Create network
![Create a network](images/Screenshot1_m3_2.png)

#### Configure networks and gateways
![network](images/Screenshot2_m3_2.png)
![ping check](images/Screenshot3_m3_2.png)

#### Set up a VLAN in the Data Center 
When subnet mask on machines in Data Center was changed to /26, traffic commence routing through ISP3 router. Because machines in the Data Center were included to subnet where default gateway is ISP3 router.

![tracert_1](images/Screenshot4_m3_2.png)

When VLAN 1,2,3 were made, machines from different VLAN can not ping and tracert each other. Because each VLAN works as a separate (isolated) local network.

![tracert_2](images/Screenshot5_m3_2.png)

#### Set up routing beetween VLAN
Create a subinterfaces
![interfaces](images/Screenshot6_m3_2.png)
Ping between servers
![ping](images/Screenshot7_m3_2.png)
