package server

import (
	"context"

	formv1 "dynamicxforms/gen/go/proto" // ✅ alias as formv1
	"log"

	"github.com/google/uuid"
)

type FormServiceServer struct {
	formv1.UnimplementedFormServiceServer
}

func (s *FormServiceServer) GetFormSchema(ctx context.Context, req *formv1.FormRequest) (*formv1.FormDefinition, error) {
	return &formv1.FormDefinition{
		Steps: []*formv1.FormStep{
			{
				// Questions: []*formv1.Question{
				// 	{
				// 		Label: "Your name?",
				// 		Type:  "text",
				// 	},
				// 	{
				// 		Label:   "Your mood?",
				// 		Type:    "radio",
				// 		Options: []string{"Happy", "Sad"},
				// 	},
				// },
			},
		},
	}, nil
}

func (s *FormServiceServer) CreateForm(ctx context.Context, req *formv1.CreateFormRequest) (*formv1.CreateFormResponse, error) {
	formID := uuid.New().String()
	log.Printf("Creating form %s: %+v", formID, req.GetForm())

	return &formv1.CreateFormResponse{
		FormId:  formID,
		Message: "Form created successfully!",
	}, nil
}

func (s *FormServiceServer) SubmitForm(ctx context.Context, req *formv1.SubmitFormRequest) (*formv1.SubmitFormResponse, error) {
	log.Printf("Form %s submitted with answers: %+v", req.FormId, req.Answers)

	return &formv1.SubmitFormResponse{
		Message: "Form submitted successfully",
	}, nil
}
