package main

import (
	"fmt"
	"os"

	"goforge.dev/gsharp/repl"
)

func main() {
	r := repl.NewREPL()
	if err := r.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "Error: %s\n", err)
		os.Exit(1)
	}
}
