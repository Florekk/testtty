# Przykładowy Projekt z Docker Compose

Ten projekt zawiera przykładową stronę webową uruchamianą za pomocą Docker Compose z serwerem Nginx.

## Struktura Projektu

```
testtty/
├── docker-compose.yml    # Konfiguracja Docker Compose
├── index.html           # Przykładowa strona HTML
└── README.md           # Ten plik
```

## Funkcje

- 🐳 **Docker Compose** - Konteneryzacja aplikacji
- ⚡ **Nginx** - Szybki serwer webowy
- 🎨 **Nowoczesny Design** - Responsywny interfejs z gradientami
- 📱 **Responsywność** - Działa na wszystkich urządzeniach

## Uruchomienie

### Lokalnie z Docker Compose:
1. Upewnij się, że masz zainstalowany Docker i Docker Compose
2. W katalogu projektu uruchom:
   ```bash
   docker-compose up --build -d
   ```
3. Otwórz przeglądarkę i przejdź do: `http://localhost:56632`

### Z Portainer (Stack z Git):

#### Opcja 1: Budowanie obrazu (zalecane)
1. W Portainer przejdź do **Stacks** → **Add stack**
2. Wybierz **Repository** i podaj URL do repozytorium Git
3. Ustaw **Name**: `testtty-web`
4. Kliknij **Deploy the stack**
5. Otwórz przeglądarkę i przejdź do: `http://raspberrypi2:56632`

#### Opcja 2: Volume mapping całego katalogu
1. W Portainer przejdź do **Stacks** → **Add stack**
2. Wybierz **Repository** i podaj URL do repozytorium Git
3. W **Web editor** skopiuj zawartość `docker-compose.volume.yml`
4. Ustaw **Name**: `testtty-web-volume`
5. Kliknij **Deploy the stack**

#### Opcja 3: Ręczne wdrożenie
1. W Portainer przejdź do **Stacks** → **Add stack**
2. Wybierz **Web editor**
3. Skopiuj zawartość `docker-compose.yml`
4. Ustaw **Name**: `testtty-web-manual`
5. Kliknij **Deploy the stack`

**Uwaga:** Użyj flagi `--build` przy pierwszym uruchomieniu lub gdy zmienisz pliki HTML.

## Zatrzymanie

Aby zatrzymać aplikację:
```bash
docker-compose down
```

## Technologie

- **Docker Compose** - Orchestracja kontenerów
- **Nginx** - Serwer webowy
- **HTML5** - Struktura strony
- **CSS3** - Stylowanie z gradientami i animacjami
- **Responsive Design** - Dostosowanie do różnych urządzeń

## Rozwój

Aby dodać nowe pliki statyczne:
1. Umieść je w katalogu projektu
2. Dodaj volume w `docker-compose.yml`
3. Uruchom ponownie: `docker-compose up -d` 