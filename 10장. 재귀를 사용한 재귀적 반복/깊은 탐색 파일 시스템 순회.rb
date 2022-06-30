def find_directories(directory)
    # 한 단계 아래 디렉터리 순회
    Dir.foreach(directory) do |filename|
        if File.directory?("#{directory}/#{filename}") && filename != "." && filename != ".."
            puts "#{directory}/#{filename}"

            # 두 단계 아래 하위 디렉터리 순회
            Dir.foreach("#{directory}/#{filename}") do |inner_filename|
                if File.directory?("#{directory}/#{filename}/#{inner_filename}") && inner_filename != "." && inner_filename != ".."
                    puts "#{directory}/#{filename}/#{inner_filename}"
                end
            end
        end
    end
end