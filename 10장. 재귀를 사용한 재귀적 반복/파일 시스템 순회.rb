def find_directories(directory)
    # 디렉터리 내 각 파일 검사, 이러한 '파일' 중 일부는 사실 하위 디렉터리 일 수 있음
    Dir.foreach(directory) do |filename|
        # 현재 파일이 하위 디렉터리면
        if File.directory?("#{directory}/#{filename}") && filename != "." && filename != ".."
            # 전체 경로명 출력
            puts "#{directory}/#{filename}"
        end
    end
end