# Sử dụng image Node.js
FROM node:14

# Set working directory
WORKDIR /app

# Sao chép package.json và cài đặt các dependencies
COPY package*.json ./
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Expose cổng mà ứng dụng của bạn sẽ chạy
EXPOSE 3000

# Chạy ứng dụng Node.js
CMD ["npm", "start"]
