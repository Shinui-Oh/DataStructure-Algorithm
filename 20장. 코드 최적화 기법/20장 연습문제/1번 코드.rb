def find_multisport_athletes(array_1, array_2)
    hash_table = {}
    multisport_athletes = []

    array_1.each do |athlete|
        hash_table[athlete[:first_name] + " " + athlete[:last_name]] = true
    end

    array_2.each do |athlete|
        if hash_table[athlete[:first_name] + " " + athlete[:last_name]]
            multisport_athletes << athlete[:first_name] + " " + athlete[:last_name]
        end
    end

    return multisport_athletes
end