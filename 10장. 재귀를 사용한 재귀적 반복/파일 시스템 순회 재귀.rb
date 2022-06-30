def find_directories(directory)
    Dir.foreach(directory) do |filename|
        if File.directory?("#{directory}/#{filename}") && filename != "." && filename != ".."
            puts "#{directory}/#{filename}"

            # 하위 디렉터리에 대해 함수를 재귀적으로 호출
            find_directories("#{directory}/#{filename}")
        end
    end
end