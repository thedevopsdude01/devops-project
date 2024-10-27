import time

def print_current_time():
    while True:  
        current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        print(f"The current time: {current_time}")
        time.sleep(5)

if __name__ == "__main__":
    print_current_time()
