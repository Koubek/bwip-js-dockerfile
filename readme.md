bwip-js
======
**Librería JS basada en Pure Postscript Barcdode Generator written by Terry Burton**
**[bwip-js - Barcode Writer in Pure JavaScript](https://github.com/metafloor/bwip-js)**
======
* The container runs two threads:
  * bwip-js API on the port 3030:
  ```http
  http://ip_or_host:3030/?bcid=isbn&text=978-1-56581-231-4+52250&includetext&guardwhitespace
  ```

  * bwip-js web server with a demo application on the port 80:
  ```http
  http://ip_or_host/demo.html
  ```

* Recommended execution:
```docker
# If not using predefined _run.bat or _run.multiples.bat files you can simply run the following:
docker run -d virt-u14:5000/bwip-js
```