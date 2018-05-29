# JSMTProxy Docker installation

High Performance NodeJS MTProto Proxy for telegram

## Linux Installation
### Debian & Ubuntu
```
$> git clone https://github.com/Mormoroth/JSMTProxy.git
$> docker build -t buildname .
$> docker run -dit --name=proxy -p 8080:6969 buildname

### Default port and secrect
      "port":6969,
      "secret":"b0cbcef5a486d9636472ac27f8e11a9d"
