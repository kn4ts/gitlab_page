package main

import (
	"fmt"
	"net/http"
	"os/exec"
	"time"
)

func main() {

	// シェルコマンドを定期実行させるgoroutine
	go func(){
		for{
			// git pull を実行
			cmdgit := exec.Command("git","pull")
			err := cmdgit.Run()
			if err != nil {
				fmt.Println("git run error!")
			}
			// make を実行
			cmdmk := exec.Command("make")
			err = cmdmk.Run()
			if err != nil {
				fmt.Println("make run error!")
			}
			// 一定時間待つ
			time.Sleep(5*time.Second)
		}
	}()

	// httpサーバを構成
	http.Handle("/", http.FileServer(http.Dir("./html")))
	err := http.ListenAndServe(":8823", nil) // port:8823で待受
	if err != nil {
		fmt.Println(err)
	}
}
