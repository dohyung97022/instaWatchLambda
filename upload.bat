set imageName="post-image"
call aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 500023560643.dkr.ecr.ap-northeast-2.amazonaws.com
cd jsFiles
call docker build -t %imageName%:latest .
call docker tag %imageName%:latest 500023560643.dkr.ecr.ap-northeast-2.amazonaws.com/%imageName%:latest
call docker push 500023560643.dkr.ecr.ap-northeast-2.amazonaws.com/%imageName%:latest