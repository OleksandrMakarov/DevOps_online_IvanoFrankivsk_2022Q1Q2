# Module 2
## Task 2.1
#### PART 1. HYPERVISORS
 - Hyper-V
 - VMware
 - Oracle VirtualBox
 - Xen
    There are two types of hypervisors. The first run on the hardware. The second run in the host OS and virtualized OS works as a guest system.
#### PART 2. WORK WITH VIRTUALBOX
## Create and configure virtual machine
```
./VBoxManage createvm --name OleksandrVM-NB_Makarov --basefolder D:\ --ostype Ubuntu_64 --register
```
Screenshot1_m2_1
```
./VBoxManage modifyvm OleksandrVM-NB_Makarov --memory 2048 --vram 16 --ioapic on --graphicscontroller vmsvga
```
## Create and attach HDD and ISO
 ```
./VBoxManage createhd --filename d:\OleksandrVM-NB_Makarov\disk1 --size 20000 --format vdi
./VBoxManage storagectl OleksandrVM-NB_Makarov --name controller --add sata --portcount 4 --bootable on
./VBoxManage storageattach OleksandrVM-NB_Makarov --storagectl controller --port 1 --device 0 --type hdd --medium D:\OleksandrVM-NB_Makarov\disk1.vdi --nonrotational on
./VBoxManage storageattach OleksandrVM-NB_Makarov --storagectl controller --port 0 --type dvddrive --medium D:\Install_Programs\ubuntu-21.10-live-server-amd64.iso
 ```
 
./VBoxManage startvm OleksandrVM-NB_Makarov
 
