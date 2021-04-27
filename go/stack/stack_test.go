package main

import "testing"

func TestPush(t *testing.T) {
	s := NewStack()
	s.Push(1)
	if s.Top() != 1 {
		t.Fatal("error in push")
	}

	s.Push(2)
	if s.Top() != 2 {
		t.Fatal("error in lifo mechanism")
	}
}

func TestPop(t *testing.T) {
	s := NewStack()
	s.Push(1)
	s.Push(2)
	s.Push(3)
	if s.Pop() != 3 {
		t.Fatal("error in lifo mechanism")
	}
	if s.Pop() != 2 {
		t.Fatal("error in lifo mechanism")
	}
	if s.Pop() != 1 {
		t.Fatal("error in lifo mechanism")
	}
}
