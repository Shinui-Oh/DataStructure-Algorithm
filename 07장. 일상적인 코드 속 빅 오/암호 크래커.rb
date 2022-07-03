def every_password(n)
    (("a" * n)..("z" * n)).each do |str|
        puts str
    end
end