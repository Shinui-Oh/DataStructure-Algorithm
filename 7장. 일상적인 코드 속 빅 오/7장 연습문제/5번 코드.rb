def pick_resume(resumes)
    eliminate = "top"

    while resumes.length > 1
        if eliminate == "top"
            resumes = resumes[resumes.length / 2, resumes.length - 1]
            eliminate = "bottom"
        
        elsif eliminate == "bottom"
            resumes = resumes[0, resumes.length / 2]
            eliminate = "top"
        end
    end

    return resumes[0]
end