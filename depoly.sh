# 停止服务
npm run stop
# 移除旧文件
rm * -rf

# 拷贝新文件
cp ../dist/* -R
cp ../package.json ./
cp ../depoly.sh ./
cp ../pm2.json ./


# 安装依赖
cnpm install 

# 开启服务
npm run start:prod