user-service:
	protoc --go_out=..\user-service\pkg\pb --go_opt=paths=source_relative --go-grpc_out=..\user-service\pkg\pb --go-grpc_opt=paths=source_relative users.proto
	protoc --go_out=..\question-service\pkg\pb --go_opt=paths=source_relative --go-grpc_out=..\question-service\pkg\pb --go-grpc_opt=paths=source_relative users.proto

course-service:
	protoc --go_out=..\question-service\pkg\pb --go_opt=paths=source_relative --go-grpc_out=..\question-service\pkg\pb --go-grpc_opt=paths=source_relative course.proto

all:
	protoc --go_out=../question-service/pkg/pb --go_opt=paths=source_relative --go-grpc_out=../question-service/pkg/pb --go-grpc_opt=paths=source_relative *.proto


allwindows:
	protoc --go_out=..\question-service\pkg\pb --go_opt=paths=source_relative --go-grpc_out=..\question-service\pkg\pb --go-grpc_opt=paths=source_relative *.proto

