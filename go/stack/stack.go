package main

import "fmt"

type StackType int

type Stack struct {
	inner []StackType
}

func (s *Stack) Push(a StackType) {
	s.inner = append(s.inner, a)
}

func (s *Stack) Top() StackType {
	return s.inner[len(s.inner)-1] // todo
}

func (s *Stack) Pop() StackType {
	top := s.Top()
	s.inner = s.inner[:len(s.inner)-1]
	return top
}

func (s *Stack) Print() {
	for v := range s.inner {
		fmt.Println(v)
	}
}

func NewStack() *Stack {
	return &Stack{
		inner: make([]StackType, 0),
	}
}
