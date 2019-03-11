
cd ../publish
# 停止服务
npm run stop
# 移除旧文件
cd ..

rm -rf publish
 
mkdir publish


# 拷贝新文件
mkdir dist
cp -rf ./temp/dist  ./publish
cp ./temp/package.json ./publish
cp ./temp/depoly.sh ./publish
cp ./temp/pm2.json ./publish

cd publish

# 安装依赖
cnpm install 

# 开启服务
npm run start:prod
