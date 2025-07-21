package main

import (
	"log"
	"net"

	"google.golang.org/grpc"

	"dynamicxforms/apps/backend/server"
	formv1 "dynamicxforms/gen/go/proto" // ✅ alias as formv1
)

func main() {
	listener, err := net.Listen("tcp", ":50051")
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	grpcServer := grpc.NewServer()
	formv1.RegisterFormServiceServer(grpcServer, &server.FormServiceServer{}) // ✅ updated to formv1

	log.Println("gRPC server listening on :50051")
	if err := grpcServer.Serve(listener); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
