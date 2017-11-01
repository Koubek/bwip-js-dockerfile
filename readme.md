## Barcode Writer in Pure JavaScript as a **Windows Container**

---

### **bwip-js** is a translation to native JavaScript of the amazing code provided in [Barcode Writer in Pure PostScript](https://github.com/bwipp/postscriptbarcode). The translated code can run on any modern browser or JavaScript-based server framework.

The software has encoding modules for over 90 different barcode types and standards. All linear and two-dimensional barcodes in common use (and many uncommon ones) are available. An exhaustive list of supported barcode types can be found at the end of this document.

---

### As I really love the original project I decided to create an image for **Windows Containers** (Docker) and make the user experience even better (please, I just mean less complicated to give all required parts together). Especially for those using Windows Containers. 

### The container is running two separate processes:
* One is providing the main HTTP API to generate the barcodes.
* The second process serves a demo web page that will allow you to visually select a barcode type, specify parameters and it will generate the selected barcode for you. There is also a link **Goto URL** that will generate the API request based on the configured parameters.

### Recommended execution:
  * Run a container with the minimum of the parameters:
```docker
docker run -d koubek/bwip-js
```
  * Specify hostname (--hostname) and container name (--name) for easier access and identification:
```
docker run -d --hostname=bwip-js --name=bwip-js koubek/bwip-js
```


* Then from you can access the demo service:
```
http://[container_ip_or_hostname]/demo.html
eg: http://bwip-js/demo.html
```


* Or you can call the API directly (no GUI):
```
http://[container_ip_or_hostname]:3030/?bcid=isbn&text=978-1-56581-231-4+52250&includetext&guardwhitespace
eg: http://bwip-js:3030/?bcid=isbn&text=978-1-56581-231-4+52250&includetext&guardwhitespace
```

You can also use [_run.ps1](_run.ps1) that will create a container for you and after that will automatically open two links (one for the API, one for the demo page) in a browser.