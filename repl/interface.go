package repl

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type REPL struct {
	reader  *bufio.Reader
	prompt  string
	history []string
}

func NewREPL() *REPL {
	return &REPL{
		reader:  bufio.NewReader(os.Stdin),
		prompt:  "gsi> ",
		history: make([]string, 0),
	}
}

func (r *REPL) Run() error {
	fmt.Println("Welcome to GSI (Ctrl+D to exit)")

	for {
		fmt.Print(r.prompt)

		input, err := r.reader.ReadString('\n')
		if err != nil {
			if err.Error() == "EOF" {
				fmt.Println("\nGoodbye!")
				return nil
			}
			return err
		}

		input = strings.TrimSpace(input)
		if input == "" {
			continue
		}

		r.history = append(r.history, input)

		result, err := r.Evaluate(input)
		if err != nil {
			fmt.Printf("Error: %s\n", err)
			continue
		}

		if result != nil {
			fmt.Printf("=> %v\n", result)
		}
	}
}

func (r *REPL) Evaluate(input string) (interface{}, error) {
	// This will eventually use our ANTLR parser
	// For now just echo input
	return input, nil
}
