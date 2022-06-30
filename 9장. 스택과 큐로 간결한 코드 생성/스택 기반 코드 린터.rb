class Linter
    def initialize
        # 간단한 배열을 스택으로 사용
        @stack = Stack.new
    end

    def lint(text)
        # 텍스트 내 각 문자를 읽는 루프 시작
        text.each_char do |char|
            # 문자가 여는 괄호면
            if is_opening_brace?(char)
                # 스택에 푸시
                @stack.push(char)
            
            elsif is_closing_brace?(char)
                # 스택에서 팝
                popped_opening_brace = @stack.pop

                # 스택이 비어 있었다면 nil이 팝 -> 여는 괄호가 앞에 나오지 않은 것
                if !popped_opening_brace
                    return "#{char} doesn't have opening brace"
                end

                # 스택에서 팝한 여는 괄호와 현재 닫는 괄호의 종류가 다르면 오류 생성
                if is_not_a_match(popped_opening_brace, char)
                    return "#{char} has mismated opening brace"
                end
            end
        end

        # 줄 끝에 도달했는데 스택이 비어 있지 않으면
        if @stack.read
            # 대응하는 닫는 괄호가 나오지 않은 여는 괄호가 있는 것이니 오류 생성
            return "#{@stack.read} doesn't have closing brace"
        end

        # 줄에 오류가 없으면 true 반환
        return true
    end

    private

    def is_opening_brace?(char)
        ["(", "[", "{"].include?(char)
    end

    def is_closing_brace?(char)
        [")", "]", "}"].include?(char)
    end

    def is_not_a_match(opening_brace, closing_brace)
        closing_brace != {"(" => ")", "[" => "]", "{" => "}"}[opening_brace]
    end
end