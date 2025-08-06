# Użyj oficjalnego obrazu Nginx Alpine
FROM nginx:alpine

# Skopiuj pliki HTML do katalogu domyślnego Nginx
COPY index.html /usr/share/nginx/html/index.html

# Ustaw uprawnienia dla plików
RUN chmod 644 /usr/share/nginx/html/index.html

# Eksponuj port 80
EXPOSE 80

# Uruchom Nginx w trybie foreground
CMD ["nginx", "-g", "daemon off;"] 