# 停止 pm2 服务
npm run stop
# 移除旧文件
rm *.* -rf

# 拷贝新文件
cp ../dist/* -R
cp ../package.json ./
cp ../pm2.json ./
cp ../depoly.sh ./

# 安装依赖
cnpm install 

# 开启 pm2 服务
npm run start:prod