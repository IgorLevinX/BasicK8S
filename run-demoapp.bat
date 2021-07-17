REM clone git repository
git clone https://github.com/selaworkshops/npm-demo-app.git
REM Build the docker image
docker image build . -t basick8s/npm-demo-app
REM Deploy the docker image in kuberenetes
kubectl.exe apply -f .\npm-demo-app.yml
REM wait and check the app is running using curl
ping localhost >nul 2>&1
curl -I demoapp.com
pause