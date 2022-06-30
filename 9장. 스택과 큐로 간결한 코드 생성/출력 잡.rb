class PrintManager
    def initialize
        @queue = Queue.new
    end

    def queue_print_job(document)
        @queue.enqueue(document)
    end

    def run
        # 루프를 실행할 때마다 큐 앞에 있는 문서를 읽음
        while @queue.read
            # 문서를 디큐해서 출력
            print(@queue.dequeue)
        end
    end

    private

    def print(document)
        # 실제 프린터를 실행시키는 코드, 데모용으로 터미널에 출력
        puts document
    end
end