def transform():
    numbers = input("Enter comma-separated numbers: ")
    
    list = numbers.split(",")
    print('List: ',list)
    
    tup = tuple(list)
    print('Tuple: ',tup)

transform()