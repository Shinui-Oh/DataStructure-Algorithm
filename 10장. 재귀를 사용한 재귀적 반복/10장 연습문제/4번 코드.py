def print_all_items(array):
    for value in array:
        # 현재 항목이 '리스트'이면
        if isinstance(value, list):
            print_all_items(value)
        else:
            print(value)