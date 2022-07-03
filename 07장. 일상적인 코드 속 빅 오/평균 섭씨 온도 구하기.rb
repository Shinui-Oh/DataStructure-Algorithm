def average_celsius(fahrenheit_readings)
    # 섭씨 온도를 모으는 컬렉션
    celsius_numbers = []

    # 읽은 값을 섭씨로 변환해 배열에 추가
    fahrenheit_readings.each do |fahrenheit_reading|
        celsius_conversion = (fahrenheit_reading - 32) / 1.8
        celsius_numbers.push(celsius_conversion)
    end

    # 섭씨 온도의 합
    sum = 0.0

    celsius_numbers.each do |celsius_number|
        sum += celsius_number
    end

    # 평균 반환
    return sum / celsius_numbers.length
end