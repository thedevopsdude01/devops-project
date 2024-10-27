import time

def print_current_time():
    current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    print(f"Current time: {current_time}")

if __name__ == "__main__":
    print_current_time()
