cd ./publish
# 停止 pm2 服务
npm run stop

cd ..
# 移除旧文件
rm ./publish/* -rf

# 拷贝新文件
cp ./dist/*  ./publish
cp ./package.json ./publish
cp ./pm2.json ./publish
cp ./depoly.sh ./publish

cd ./publish
# 安装依赖
cnpm install 

# 开启 pm2 服务
npm run start:prod