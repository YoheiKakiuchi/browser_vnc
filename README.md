# browser_vnc

## Build

```
./build.sh
```

## Run (share address with host for nvidia)

On a PC1 whose ip-address is address1
```
./run_net_host.sh
```

On a PC2 whose ip-address is address2
```
roslaunch rosbridge_server rosbridge_websocket.launch port:=9090
```

Access to http://address1:6080/index.html?wsport=9090&wsaddress=address2

For apps using OpenGL, you can access the X server through a docker-console.
```
docker exec -it browser_novnc bash
vglrun rosrun rviz rviz
```

For apps not using OpenGL, you can access the X server through a console at local-machine.
```
DISPLAY=:1 xlogo
```

You can check a developer console at the browser.
```
run without debug print
start with wsport=xxxx, wsaddress=xx.xx.xx.xx
```

If a gamepad is connected to PC2,
```/joy``` topic may appear after you touch the gamepad.

## Run (just Docker local)

```
docker run --name browser_vnc --publish 6080:80 irslrepo/browser_vnc:20.04
```

Acces to http://localhost:6080


You can access the X server through a docker-console.
```
docker exec -it browser_vnc bash
```
