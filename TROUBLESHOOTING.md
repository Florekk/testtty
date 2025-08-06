# Rozwiązywanie Problemów - Portainer na Raspberry Pi

## Błąd: "failed to list workers: Unavailable: connection closed before server preface received"

## Błąd: "error mounting "/data/compose/42/index.html" to rootfs: not a directory"

### Przyczyny:
1. **Brak zasobów** - Raspberry Pi ma ograniczone zasoby
2. **Problem z Docker daemon** - Połączenie zostało przerwane
3. **Problem z budowaniem obrazu** - Zbyt duże obciążenie

### Rozwiązania:

#### 1. Sprawdź zasoby systemu
```bash
# Sprawdź pamięć
free -h

# Sprawdź CPU
top

# Sprawdź miejsce na dysku
df -h
```

#### 2. Wyczyść Docker
```bash
# Usuń nieużywane obrazy
docker system prune -a

# Usuń nieużywane wolumeny
docker volume prune

# Restartuj Docker
sudo systemctl restart docker
```

#### 3. Zwiększ zasoby dla Docker
Edytuj `/etc/docker/daemon.json`:
```json
{
  "default-shm-size": "128M",
  "storage-driver": "overlay2"
}
```

#### 4. Użyj budowania obrazu zamiast volume mapping
W `docker-compose.yml`:
```yaml
services:
  web:
    build: .
    ports:
      - "56632:80"
    restart: unless-stopped
```

#### 5. Alternatywnie: Volume mapping całego katalogu
W `docker-compose.volume.yml`:
```yaml
services:
  web:
    image: nginx:alpine
    ports:
      - "56632:80"
    volumes:
      - .:/usr/share/nginx/html
```

#### 5. Sprawdź logi Portainer
1. W Portainer przejdź do **Stacks**
2. Kliknij na stack
3. Sprawdź logi w zakładce **Logs**

#### 6. Alternatywne uruchomienie
```bash
# Uruchom bezpośrednio
docker run -d -p 56632:80 -v $(pwd)/index.html:/usr/share/nginx/html/index.html nginx:alpine
```

### Najlepsze praktyki dla Raspberry Pi:

1. **Używaj gotowych obrazów** zamiast budowania
2. **Ogranicz zasoby** dla kontenerów
3. **Używaj volume mapping** dla plików statycznych
4. **Regularnie czyść** nieużywane obrazy
5. **Monitoruj zasoby** systemu

### Sprawdź czy działa:
```bash
# Sprawdź czy kontener działa
docker ps

# Sprawdź logi
docker logs <container_id>

# Przetestuj stronę
curl http://localhost:56632
``` 