# Volume Access

### Goal
  Run a `express` docker with `volume`, add a json file into this volume on `DaoCloud`'s webpage, check whether the file is working with `express` server running inside docker which I use for printing log.

### Procedure
  + login into `DaoCloud` website's `Dashboard` <p>

  + add `sample.json` into `volume`
 
  + create a new `project` <p>
    - click `create project` button <p>
    - name the project <p>
    - configure github project `daocloud` as this project's `code source`
    - click `create project` button <p>

  + create a new `image` <p>
    - add `code commit` as a new `trigger rule`
    - choose `master` branch, then click `manual build` button to create this image

  + create a new `application`
    - click `create application` button <p>
    - choose `daocloud` image, then click `deploy the newest version` button
    - name the application <p>
    - click `basic setting` <p>
    - choose `volume binding` <p>
    - click `deploy instantly` <p>
  
  + done <p>
