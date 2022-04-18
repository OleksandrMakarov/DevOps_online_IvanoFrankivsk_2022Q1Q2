# Module 5
## Task 5
#### 1. Configure static addresses on all interfaces Server_1
```
$sudo nano /etc/netplan/00-installer-config.yaml
```
![netplan](images/Screenshot1_t5_1.png)

#### 2. Install and configure DHCP server on Server_1
```
$sudo apt install isc-dhcp-server
$sudo nano /etc/dhcp/dhcpd.conf
```
![dhcp_conf](images/Screenshot2_t5_1.png)

```
$sudo nano /etc/default/isc-dhcp-server
```
![dhcp_conf](images/Screenshot3_t5_1.png)
```
$sudo systemctl restart isc-dhcp-server.service
$dhcp-lease-list
```
![lease-list](images/Screenshot4_t5_1.png)

#### 3. Commands ```$ping``` and ```$traceroute``` between clients
There is no connection between client becouse each of them belongs to different networks.
#### 4. Configure routing
Client_1
```
$sudo ip addr add 172.17.32.1/24 dev lo
$sudo ip addr add 172.17.42.1/24 dev lo
```
![add_ip](images/Screenshot5_t5_1.png)

Client_2
```
$sudo ip route add 10.87.22.0/4 via 10.10.87.1
$sudo ip route add 172.17.32.0/24 via 10.10.87.1
```
Server_1
```
$sudo ip route add 172.17.32.0/24 via 10.87.22.3
```
![traceroute](images/Screenshot6_t5_1.png)
![route -n](images/Screenshot7_t5_1.png)

#### 5. Summarizing
A static summary route is used to minimize the number of static routes in the routing table and lessen the administrative overhead that may impact the memory usage of the routers.

![supernet](images/Screenshot8_t5_1.png)

Server_1
```
$sudo ip route add 172.17.32.0/20 via 10.87.22.3
```
![summarizing](images/Screenshot9_t5_1.png)

#### 6. SSH configure

![ssh](images/Screenshot10_t5_1.png)

#### 7. Firewall configure
```
$sudo iptables -A INPUT -p tcp -s 10.87.22.3/24 --dport 22 -j ACCEPT
$sudo iptables -A INPUT -p tcp -s 10.10.87.2/24 --dport 22 -j DROP
$sudo iptables -A FORWARD -p icmp -s 10.10.87.2/24 -d 172.17.32.1/24 -j ACCEPT
$sudo iptables -A FORWARD -p icmp -s 10.10.87.2/24 -d 172.17.42.1/24 -j DROP
```
![iptables](images/Screenshot11_t5_1.png)

#### 8. NATconfigure
```
$sudo iptables -t nat -A POSTROUTING -j MASQUERADE
or
$sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/9 -j SNAT --to-source 192.168.1.120
```
![nat](images/Screenshot12_t5_1.png)