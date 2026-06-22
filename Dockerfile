# ใช้ Nginx แบบ Alpine ขนาดเล็กและเบา
FROM nginx:alpine

LABEL maintainer="Sysnect IT Team"

# คัดลอก nginx config (พร้อม CORS headers)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# คัดลอกไฟล์ Dashboard
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]