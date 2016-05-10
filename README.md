## Getting Started
1. Clone this repository
1. Customize `cod4/server.cfg`
1. Set environment variable `COD4_DATA`, e.g. ```export COD4_DATA="/Applications/Call of Duty 4/Call of Duty 4 Data"```
1. Build the docker image, e.g. ```docker-compose build```
1. Run the docker image: ```docker-compose up```
1. Connect to the server!

## Configuration
If you want to customize the server.cfg file you can mount `/home/cod4/server.cfg` as a volume.

## References
- Forked from https://github.com/hberntsen/docker-cod4
- Linux server binary originates from http://www.opferlamm-clan.de/wbb2/thread.php?threadid=16895&threadview=0&hilight=&hilightuser=0&page=1
- Punkbuster files from http://www.pbbans.com/forums/files/call-of-duty-4-linux-file93.html
