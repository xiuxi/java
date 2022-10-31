package g

import (
	"fmt"
	"os/exec"
)

func P() {
	fmt.Println("p.bat 1")
	exec.Command("cmd.exe", "/C", "D:\\gitHub\\java_ubuntu_windows\\p.bat")
}
