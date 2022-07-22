package main

import (
        "os"
        "strconv"
        "log"
        "github.com/sarjsheff/hiklib"
)

func main() {
    log.Println(hiklib.HikVersion())
    port, _ := strconv.Atoi(os.Args[2])
    u, dev := hiklib.HikLogin(os.Args[1], port, os.Args[3], os.Args[4])
    log.Println(u)
    log.Println(dev)
    res := hiklib.HikCaptureImage(u, 37, "./cam.jpeg")
    log.Println(res)
    hiklib.HikLogout(u)
}
