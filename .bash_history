sudo apt update
sudo apt install -y docker.io git
sudo systemctl enable --now docker
sudo docker --version
git --versionsudo apt update
sudo apt install -y docker.io git
sudo systemctl enable --now docker
sudo docker --version
git --version
mkdir student-helpdesk
cat > index.html <<'EOF'
<!doctype html>
<html><head><title>Student Helpdesk</title></head>
<body><h1>Welcome to Student Helpdesk</h1>
<p>My first AWS DevOps deployment is live!</p></body></html>
EOF

ls
cat > Dockerfile <<'EOF'
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
EOF

ls
sudo docker build -t student-helpdesk:1.0 .
sudo docker run -d --name student-helpdesk -p 80:80 student-helpdesk:1.0
sudo docker ps
sudo docker rm -f student-helpdesk
sudo docker ps -a
git config --global user.name "Sanjay"
