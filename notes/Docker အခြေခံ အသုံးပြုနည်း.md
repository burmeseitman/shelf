# Docker အခြေခံ အသုံးပြုနည်း
Docker ဆိုတာ **Modern Software Development** အတွက် မရှိမဖြစ်တဲ့ Tool တစ်ခုဖြစ်တာကြောင့် IT သမားတိုင်း သိထားဖို့လိုပါတယ်။ Application တစ်ခုကို Deployment လုပ်တဲ့အခါ Traditional နည်းနှင့်လုပ်တာထက် Modern နည်း ဖြင့်လုပ်ခြင်းက Operating System (OS) Version တွေ၊ Package Version တွေကို ထည့်သွင်းစဉ်းစားစရာမလိုပဲနှင့် လုပ်နိုင်တယ်။ လိုအပ်တဲ့ Environment ကို စက္ကန့်ပိုင်းအတွင်း Setup လုပ်နိုင်တယ်။ Application တွေ၊ Service တွေက Main OS ရဲ့ Kernel ကိုပဲ မျှသုံးတာကြောင့် Virtual Machine (VM) ထက်ပိုပြီးပေါ့ပါးတာကြောင့် လုပ်ဆောင်တာမြန်ဆန်တယ်။ Container တွေအများကြီးကို စက်တစ်လုံးတည်းမှာ Deploy လုပ်ထားပြီး Run ထားနိုင်တယ်။ Container တစ်ခုချင်းစီကလည်း Isolation ဖြစ်တာကြောင့် Security အတွက် စိတ်ချရတယ်။ Application တစ်ခုလုံးကို အပိုင်းလေးတွေခွဲပြီး Development လုပ်တဲ့ပုံစံ (Microservices) အတွက်ဆိုရင် Docker ကိုအသုံးပြုခြင်းက အကောင်းဆုံးဖြစ်ပါတယ်။
## Docker ကို ဘယ်လို Install လုပ်မလဲ။
Docker ကို Install လုပ်ဖို့ မိမိ Operating System နှင့်သက်ဆိုင်တဲ့ Docker Desktop Application ကို ဒီ [Link](https://www.docker.com/get-started/) ကနေ Download ချပြီး လုပ်နိုင်ပါတယ်။ Install လုပ်ပြီးရင် Docker ကို Desktop Applcation ကနေ (သို့မဟုတ်) Terminal ကနေ အသုံးပြုလို့ရပါပြီ။ Docker Desktop Applcation က GUI (Graphical User Interface) ဖြစ်တာကြောင့် အသုံးပြုရလွယ်ကူပါတယ်။ သို့သော် Docker အတွက် အသုံးပြုတဲ့ အခေါ်အဝေါ်တွေကိုမသိရင် စတင်လေ့လာတဲ့အခါမှာ ခက်ခဲနိုင်ပါတယ်။
## Image နှင့် Container အကြောင်း
Docker ထဲမှာပါတဲ့ အဓိက Component နှစ်ခုကတော့ Image နှင့် Container ဖြစ်ပါတယ်။
### Image
Image ဆိုတာ အဆင်သင့်အသုံးပြုနိုင်တဲ့ Template ဖြစ်ပါတယ်။ Application တစ်ခုအလုပ်လုပ်နိုင်ဖို့ လိုအပ်တဲ့ Services ၊ Libraries ၊ Dependencies နှင့် Settings တွေအားလုံး စုစည်းထားတဲ့ Package တစ်ခုဖြစ်ပါတယ်။ Object Oriented Programming (OOP) သဘောတရားအရ ပြောမယ်ဆိုရင် Image ဆိုတာ Class နှင့် အတူတူပဲဖြစ်ပါတယ်။ Docker Image တွေကို Docker Hub ထဲမှာတွေ့နိုင်ပါတယ်။ ဒီ [Link](https://hub.docker.com/) ကနေဝင်ကြည့်လို့ရတယ်။
### Container
Container ဆိုတာ Image ကိုအသုံးပြုပြီး တည်ဆောက်လိုက်လို့ ဖြစ်လာတဲ့အရာကို Container လို့ခေါ်ပါတယ်။ OOP မှာ Class ကနေ Object ဖြစ်သလိုပဲ၊ Docker မှာလည်း Image ကနေ ပွားယူလိုက်လို့ ရလာတာကို Container လို့ခေါ်ပါတယ်။ Image တစ်ခုကနေ Container တွေအများကြီး တည်ဆောက်နိုင်ပါတယ်။ Container တစ်ခုချင်းစီဟာ သီးခြားစီ (Isolated) တည်ရှိပြီးတော့ အလုပ်လုပ်ကြတယ်။
## Docker File အကြောင်း
Dockerfile ဆိုတာ Image တစ်ခုဖြစ်လာဖို့ ညွှန်ကြားချက်တွေ ရေးထားတဲ့ File ကိုခေါ်ပြီးတော့ သူ့မှာ File Extension မရှိဘူး။ File နာမည်ကို Default အနေနှင့် Dockerfile လို့သတ်မှတ်ပါတယ်။ ဥပမာ Flask Web Framework ကို အသုံးပြုထားတဲ့ Python Web Application File တွေ၊ Folder တွေနှင့်အတူ Dockerfile ကို အောက်ပါအတိုင်း တွေ့ရပါတယ်။

```
/my-web-app
│
├── venv/                 # Python virtual environment
├── static/               # For static assets like CSS, JS, images
│   └── css/
│       └── main.css
├── templates/            # For HTML template files
│   └── index.html
│   └── layout.html
├── app.py                # Main file, it contains routes and app creation
├── config.py             # Configuration settings
├── Dockerfile            # Docker file to build a web server
└── requirements.txt      # Project dependencies
```

Dockerfile ထဲမှာ Image တစ်ခုဖြစ်လာဖို့ အောက်မှာတွေ့ရတဲ့အတိုင်း ညွှန်ကြားချက်တွေ ရေးထားပါတယ်။

```Dockerfile
# Image name from Docker Hub
FROM python:3.9-slim
# Assign working directory in container
WORKDIR /app
# Copy requirements.txt file to container
# This file includes Python package names to use in the container
COPY requirements.txt .
# Install all packages from requirements.txt in Docker
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of files to container
COPY . .
# Assign port number for web application
EXPOSE 5000
# Command to run when container started
CMD ["python", "app.py"]
```

Dockerfile ကနေ Image အဖြစ်ကို တည်ဆောက်ဖို့အတွက် အောက်ပါ Command ကိုအသုံးပြုပြီး Build လုပ်ရပါတယ်။ နောက်ဆုံးမှာပါတဲ့ **.** (dot) ကလက်ရှိ Folder ထဲမှာရှိတဲ့ Docker File ကို ရည်ညွှန်းတာဖြစ်ပါတယ်။ Image နာမည်ကိုတော့ my-web-app လို့ပေးထားပါတယ်။

```Bash
docker build -t my-web-app .
```

Image ရလာပြီဆိုရင် Container တည်ဆောက်ဖို့အတွက် အောက်ပါ Command နှင့် Run ရပါတယ်။

```Bash
docker run -p 5000:5000 my-web-app
```

ဒါဆိုရင် Browser ကနေ http://localhost:5000 ကို ခေါ်ကြည့်လို့ ရပါပြီ။
## Docker Compose File အကြောင်း
Application (သို့မဟုတ်) Service တစ်ခုအတွက် Container တည်ဆောက်ချင်တဲ့အခါမှာ Docker File ကို အသုံးပြုတယ်။ အကယ်၍ Application အတွက် Container တစ်ခုမက လိုအပ်လာတဲ့အခါမှာ Docker Compose File ကို အသုံးပြုရတယ်။ Application တစ်ခုလုံးကို တစ်ပြိုင်တည်း စနစ်တကျ Run ပေးမယ့် File ဖြစ်တယ်။ ရိုးရှင်းပြီး အလွယ်တကူ ဖတ်နိုင်တဲ့ File လည်းဖြစ်တယ်။ ဥပမာ Python Web Application အတွက် Application Server နှင့် Database Server နှစ်ခုပါဝင်တဲ့ File တွေ၊ Folder တွေနှင့်အတူ Docker Compose File ကိုလည်း အောက်ပါအတိုင်း တွေ့ရပါတယ်။

```
/my-web-app
│
├── venv/                 # Python virtual environment
├── static/               # For static assets like CSS, JS, images
│   └── css/
│       └── main.css
├── templates/            # For HTML template files
│   └── index.html
│   └── layout.html
├── app.py                # Main file, it contains routes and app creation
├── config.py             # Configuration settings
├── Dockerfile            # Docker file to build container for a web server
├── docker-compose.yml    # Create and build containers for app and database servers
└── requirements.txt      # Project dependencies
```

Docker Compose File ရဲ့ File Extension ကို **.yml** (သို့မဟုတ်) **.yaml** နှစ်မျိုးဖြင့် တွေ့နိုင်ပါတယ်။ File နာမည်ကို Default အနေနှင့် docker-compose.yml လိုသတ်မှတ်ပါတယ်။

```docker-compose.yaml
version: '3.8'
services:
  web:
    build: .             # Use Dockerfile in current folder to build container
    ports:
      - "5000:5000"      # Map port 5000 of Main OS to port 5000 of Container
    depends_on:
      - db               # Start Web once database server up
  db:
    image: postgres:15   # Use Postgres SQL Server image from Docker Hub
    environment:
      POSTGRES_PASSWORD: password123
```

Docker Compose File ဆိုတာ Dockerfile နေရမှာ အစားထိုးသုံးစွဲဖို့ မဟုတ်ပဲ နှစ်မျိုးစလုံး တွဲဖက်အသုံးပြုဖို့ဖြစ်ပါတယ်။ နမူနာ File ထဲမှာ **postgres:15** Image ကို Docker Hub ကနေ ခေါ်သုံးထားတာဖြစ်ပါတယ်။ Docker Compose File ကိုအသုံးပြုပြီး Container တွေကို အောက်ပါ Command နှင့် Run ရပါတယ်။

```bash
docker compose up
```

docker-compose.yaml File ထဲမှာရေးထားတဲ့ Service အားလုံး တက်လာပါလိမ့်မယ်။

## Docker Command နှင့် Parameters များ
Docker ကို စိတ်ကြိုက် စီမံခန့်ခွဲနိုင်ဖို့အတွက် Docker Command နှင့် Parameter တွေကို သေချာနားလည်ထားဖို့ လိုပါတယ်။ အသုံးအများဆုံး Command တွေနှင့် တွဲဖက်အသုံးပြုလေ့ရှိတဲ့ Parameter တွေကို စုစည်းဖေါ်ပြပေးလိုက်ပါတယ်။

### ```docker build``` : Image တည်ဆောက်ဖို့ အသုံးပြုတယ်။
* ``-t, --tag`` (Tag): Image ကို နာမည်ပေးဖို့ အသုံးပြုတယ်။ သူ့နောက်မှာ ```name:tag``` ပုံစံနှင့် သုံးပါတယ်။
  * ဥပမာ ```docker build -t my-app:v1.0```
* ```-f, --file``` (File): Dockerfile နာမည်နှင့်မဟုတ်ပဲ အခြားနာမည်ပေးထားရင် File လမ်းကြောင်းပြဖို့ သုံးပါတယ်။
  * ဥပမာ ```docker build -f Dockerfile.dev .```
* ```--no-cache```: Cache ကို မသုံးပဲ အစကနေပြန်ပြီး Build လုပ်ရန် သုံးပါတယ်။
### ```docker run``` : Container အသစ်ဆောက်ပြီး Run ဖို့ အသုံးပြုတယ်။
* ```-d``` (Detached Mode): Container ကို Background မှာပဲ Run ခိုင်းတာဖြစ်တယ်။
* ```-p``` (Port Mapping): ```[Host Port]:[Container Port]``` ပုံစံနှင့် သုံးပါတယ်။ Host ဆိုတာ Main Operating System (OS) ဖြစ်ပါတယ်။
  * ဥပမာ ```-p 8080:80```
* ```--name```: Container ကို နာမည်ပေးဖို ဖြစ်ပါတယ်။ အကယ်၍ နာမည်မပေးခဲ့ရင် Docker က ကျပန်းနာမည်တစ်ခုပေးမှာ ဖြစ်တယ်။
* ```-v``` (Volume): ```[Host Path]:[Container Path]``` စက်ထဲက Folder နှင့် Container ထဲက Folder နှစ်ခုကို ချိတ်ဆက်ပြီး Data သိမ်းဖို့ သုံးပါတယ်။
* ```-e``` (Environment): Environment Variables တွေ ထည့်ပေးဖို့ သုံးပါတယ်။
  * ဥပမာ ```-e MYSQL_ROOT_PASSWORD=1234```
* ```--rm``` (Remove): Container ရပ်သွားတာနှင့် အလိုလျှောက် အပြီးဖျက်ပေးဖို့ သုံးပါတယ်။ Sandbox Container အနေနှင့် အသုံးပြုတဲ့အခါမျိုး သုံးပါတယ်။
* ```-it``` (Interactive Terminal): Container ထဲကို ဝင်ချင်တဲ့အခါ သုံးပါတယ်။ Container အတွက် လိုအပ်တဲ့ Command ရိုက်ထည့်ဖို့ (သို့မဟုတ်) အခြား Setting တွေသတ်မှတ်ဖို့ ဖြစ်ပါတယ်။
### ```docker ps``` : Container စာရင်းကြည့်ဖို့ အသုံးပြုတယ်။
* ```-a``` (All): အလုပ်လုပ်နေတဲ့ Container တွေတင်မကဘဲ ရပ်နေတဲ့ Container တွေကိုပါ ပြပေးဖို့သုံးပါတယ်။
* ```-q``` (Quiet): Container ID တွေကိုပဲ သီးသန့်ထုတ်ပြဖို့အတွက် အသုံးပြုတယ်။
* ```-s``` (Size): Container တစ်ခုချင်းစီ ဘယ်လောက် Size ယူထားလဲဆိုတာ ပြပေးဖို့သုံးပါတယ်။
### ```docker images``` : Image စာရင်းကြည့်ဖို့ အသုံးပြုတယ်။
* ```-a``` (All): Intermediate Images တွေ အားလုံးကို ပြပေးဖိုသုံးပါတယ်။
* ```-q```: Image ID တွေကိုပဲ ပြပေးဖို့သုံးပါတယ်။
### ```docker exec``` : (Run ထားတဲ့ Container ထဲဝင်ဖို့ အသုံးပြုတယ်။)
* ```-it``` (Interactive Terminal):: အများဆုံးသုံးပါတယ်။
	* ဥပမာ ```docker exec -it my_web_app bash``` လို့ ရိုက်ရင် container ထဲက terminal ထဲကို တိုက်ရိုက် ရောက်သွားမှာဖြစ်ပါတယ်။
### ```docker rm နှင့် docker rmi``` : (Image နှင့် Container တွေကို ဖျက်ဖို့ အသုံးပြုတယ်။)
* ```-f``` (Force): Run နေတဲ့ Container (သို့မဟုတ်) သုံးနေတဲ့ Image ကို အတင်းအဓမ္မ ဖျက်ခိုင်းချင်တဲ့အခါမှာ သုံးတယ်။
အထက်မှာ ဖေါ်ပြခဲ့တဲ့ Command နှင့် Parameter တွေကို တွဲဖက်အသုံးပြုနိုင်ပါတယ်။
ဥပမာ ```docker rm -f $(docker ps -aq)``` ဆိုရင် Container တွေအားလုံး ပျက်သွားမှာဖြစ်ပါတယ်။ ```docker rmi -f $(docker images -q)``` ဆိုရင် Image တွေအားလုံး ပျက်သွားမှာဖြစ်ပါတယ်။
### ```docker compose up``` : ```docker-compose.yml``` ထဲက service အားလုံးကို Run ဖို့အသုံးပြုတယ်။
* ```-d``` : Background မှာ Run ချင်ရင် သုံးပါတယ်။
* ```--build```: Code ပြင်ထားလို့ Image ကို အသစ်ပြန် Build လုပ်ပြီးမှ Run ဖို့အတွက်သုံးပါတယ်။
### ```docker compose down``` : Container တွေအားလုံး ဖျက်ဖို့အသုံးပြုတယ်။
* ```-v```: Volume ထဲက Data တွေကိုပါ အပြီးဖျက်ချင်ရင် သုံးပါတယ်။ ဒါမပါရင် Volume ထဲက Data တွေ မပျက်ပါဘူး။
### ```docker compose stop``` : Container တွေကို ရပ်ဖို့အသုံးပြုတယ်။
* Container ထဲက Service ခဏရပ်ဖို့အတွက် အသုံးပြုတာကြောင့် Data တွေပျက်သွားမှာ မဟုတ်ပါဘူး။ ```start``` ဆိုရင်တော့ Server တွေပြန်စတင်မှာ ဖြစ်ပါတယ်။
### ```docker compose logs``` : Server Log တွေကြည့်ဖို့ အသုံးပြုတယ်။
* ```-f```: Log တွေကို Real Time တောက်လျှောက်ကြည့်ချင်ရင် သုံးပါတယ်။
	* ဥပမာ ```docker compose logs -f my-web-app```
## Container Networking အကြောင်း
Container တွေဟာ ပုံမှန်အားဖြင့်ဆိုရင် တစ်ခုနှင့်တစ်ခု သီးခြားစီတည်ရှိပါတယ်။ အကယ်၍ Container တွေ ဆက်သွယ်ဖို့ လိုအပ်လာတယ်ဆိုရင် Docker Network ကို သုံးနိုင်ပါတယ်။ Docker ထဲမှာ Network Driver တွေအများကြီးရှိပေမယ့် အသုံးအများဆုံးကတော့ Bridge Network ဖြစ်ပါတယ်။ အခြေခံအကျဆုံးလည်း ဖြစ်တာကြောင့် Default အနေနှင့်သုံးပါတယ်။

### Bridge Network
Bridge Network ဆိုတာ Container တွေအတွက် သီးသန့်ဆောက်ပေးထားတဲ့ Virtual Switch တစ်ခုလိုဖြစ်ပါတယ်။ Network ထဲမှာ ရှိနေတဲ့ Container အချင်းချင်းပဲ ဆက်သွယ်လို့ ရပြီးတော့ Bridge အပြင်ဘက် တခြား Network ထဲက Container တွေကနေ လှမ်းချိတ်လို့မရပါဘူး။ အကယ်၍ စက်ထဲမှာ ဘာ Network တွေ ရှိနေလဲဆိုတာကို ```docker network ls``` command နှင့် ကြည့်နိုင်ပါတယ်။

### Container တွေ ချိတ်ဆက်ပုံ
Container တွေ တစ်ခုနှင့်တစ်ခု ချိတ်ဆက်ဖို့အတွက် အကောင်းဆုံးနှင့် အလွယ်ကူဆုံးနည်းလမ်းကတော့ Docker Compose ကိုအသုံးပြုပြီး Custom Network တစ်ခုတည်းအောက်မှာ ထားရှိခြင်းဖြစ်ပါတယ်။ Docker Compose ကို သုံးချင်းအားဖြင့် အလိုလျှောက် Network တစ်ခုတည်ဆောက်ပေးပြီး Container အချင်းချင်းကို Service Name နှင့် လှမ်းခေါ်နိုင်ပါတယ်။ IP Address တွေအသုံးပြုစရာ မလိုတဲ့အတွက် အဆင်ပြေတယ်။ ဥပမာ Python ကနေ Redis ထဲကို data လှမ်းသိမ်းမယ့် Network ပုံစံကို  အောက်ပါအတိုင်း တွေ့ရပါတယ်။
```docker-compose.yaml
services:
  web-app:		      # Web application server
    build: .		    # Use Dockerfile in current folder to build container
    ports:
      - "5000:5000"
    networks:
      - my-app-net  # Use the bridge network name

  redis-server:		  # Redis server and default port is 6379
    image: "redis:alpine" # Use Redis image from Docker Hub
    networks:
      - my-app-net  # Use the bridge network name

networks:
  my-app-net:		    # Create a custom bridge network
    driver: bridge
```
### Python Code ထဲမှာ နမူနာအသုံးပြုပုံ
```python
import redis

# Connect to Redis using the service name from docker-compose.yaml
r = redis.Redis(host='redis-server', port=6379, db=0)

# Set and get a value
r.set('mykey', 'Hello from Python!')
value = r.get('mykey')
print(value.decode('utf-8'))
```
### Main OS ကနေ Container သို့ ချိတ်ဆက်ပုံ
Container ထဲမှာ Run နေတဲ့ Web Server (ဥပမာ Port 80) ကို Main OS ရဲ့ Browser ကနေ ကြည့်ချင်ရင် Port Mapping လုပ်ပေးရပါတယ်။ ဥပမာ Container ထဲမှာ Run နေတဲ့ Nginx Server ကို Main OS ကနေကြည့်ဖို့အတွက် ```docker run -p 8080:80 nginx``` Command ကိုအသုံးပြီးတော့ Main OS ရဲ့ Browser ကနေ ```http:\\localhost:8080``` လို့လှမ်းခေါ်လိုက်ရင် Container ထဲက Port 80 ဆီကို ရောက်သွားမှာဖြစ်ပါတယ်။
## Security အတွက် သိသင့်သည်များ
Container တွေနှင့်အသုံးပြုတာ Isolation ဖြစ်နေတာကြောင့် လုံခြုံတယ်လို့ပြောနိုင်ပေမယ့် သတိထားရမယ့်အချက်တွေလည်း ရှိနေပါတယ်။
* **Root User နှင့် အသုံးမပြုပါနှင့်** : Container ထဲမှာ Application အတွက် Root User ကိုအသုံးမပြုပဲ User အသစ်ဆောက်ပြီး အသုံးပြုခြင်းက ပိုစိတ်ချရပါတယ်။
* **Docker Image တွေကို စစ်ဆေးအသုံးပြုပါ** : Docker Hub ထဲက Image တွေကိုအသုံးပြုတဲ့အခါမှာ သေချာစစ်ဆေးပါ။ စိတ်မချရတဲ့ Image တွေကို အသုံးမပြုပါနှင့်။
* **Package လိုအပ်သလောက်ပဲ သုံးပါ** : Container အတွက် လိုအပ်မယ့် Package တွေကိုပဲ အသုံးပြုပါ။ လိုတာထက်ပိုရင်သုံးရင် ဟာကွက်တွေ (Vulnerability) ပိုများနိုင်ပါတယ်။