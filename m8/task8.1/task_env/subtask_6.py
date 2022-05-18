from platform import platform
import platform
import psutil

system_info = platform.uname()

print(f"Name: {system_info.node}") 
print(f"OS: {system_info.system}")
print(f"Processor: {system_info.processor}")
print(f"RAM: {psutil.virtual_memory()}")
print(f"Version: {system_info.version}")
print(f"Machine: {system_info.machine}")

print('HDD: ')
hdd_info = psutil.disk_partitions()
for item in hdd_info:
    print(item)