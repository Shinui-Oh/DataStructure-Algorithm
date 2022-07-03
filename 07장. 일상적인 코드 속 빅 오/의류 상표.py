def mark_inventory(clothing_items):
    clothing_options = []

    for item in clothing_items:
        # 1부터 5까지의 각 사이즈에 대해 수행
        for size in range(1, 6):
            clothing_options.append(item + " Size : " + str(size))
    
    return clothing_options