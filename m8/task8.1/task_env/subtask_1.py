import datetime as dt

def print_time():
    now = dt.datetime.now() 
    print(now.strftime("%d-%m-%Y %H:%M:%S"))
print_time()