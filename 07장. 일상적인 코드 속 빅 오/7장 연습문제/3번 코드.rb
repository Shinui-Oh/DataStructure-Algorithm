def find_needle(needle, haystack)
    needle_index = 0
    haystack_index = 0

    while haystack_index < haystack.length
        if needle[needle_index] == haystack[haystack_index]
            found_needle = true

            while needle_index < needle.length
                if needle[needle_index] != haystack[haystack_index + needle_index]
                    found_needle = false
                    break
                end

                needle_index += 1
            end

            return true if found_needle
            
            needle_index = 0
        end
        
        haystack += 1
    end

    return false
end