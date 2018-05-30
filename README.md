# JSMTProxy Docker installation

High Performance NodeJS MTProto Proxy for telegram

## Installation
### Debian & Ubuntu
```
$> git clone https://github.com/Mormoroth/JSMTProxy.git
$> cd JSTMProxy
$> docker build -t buildname .
```
## How to run 
```
$> docker run --rm -e secret='MD5 of your secret' -dit --name=proxy -p 8080:6969 buildname
```
## Example :
```
$> docker run --rm -e secret=9adbe0b3033881f88ebd825bcf763b43 -dit --name=proxy -p 8080:6969 buildname
```
### Default port and secrect
```
"port":6969,

"secret":"581bbe4b3adb6e61ec18837ac9c0b930"
 ---------
 You can edit default values in config.json
 ````
 ### String to md5
 http://www.md5.cz
 
