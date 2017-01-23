# Volume Access

### Goal
  Run a `express` docker with `volume`, add a json file into this volume on `DaoCloud`'s webpage, check whether the file is working with `express` server running inside docker which I use for printing log.

### Local Development
  + run docker server <p>
  `docker -H tcp://192.168.154.140:6666 daemon --registry-mirror=http://f2d6cb40.m.daocloud.io`
  
  + create `Dockerfile`
  
  + run `Dockerfile` & create `VolumeAccess` image <p>
  `docker -H tcp://192.168.154.140:6666 build -t=volume_access .`
  
  + create `sample.json` <p>
  ```
    {
      "version": "0.0.1",
      "name": "Volume Access Test",
      "Infor": "Hello World"
    }
  ```

  + run this image <p>
  `docker -H tcp://192.168.154.140:6666 run -p 8080:8080/tcp -v /home/wisnuc/Documents/sample.json:/data/sample.json d859720fc016`
  
  + open `chrome`, check whether is working
  `192.168.154.140:8080`
  
### DaoCloud Development
  + create a new project <p>
 
  + create a new image <p>
  
  + run this image <p>
