# АБК EasyMix

Сайт с интерактивной 3D-моделью АБК EasyMix (Three.js). Статический сайт: `index.html` + локальная копия Three.js r147 в `vendor/` (без зависимости от CDN). Сборка не нужна.

## Локальный запуск

```bash
python3 -m http.server 8000
```

Откройте http://localhost:8000.

## Публикация

- **GitHub Pages:** в настройках репозитория → Pages → Source выберите «GitHub Actions». Workflow `.github/workflows/pages.yml` публикует сайт при каждом пуше в `main`.
- **Vercel / Netlify:** импортируйте репозиторий как статический проект без команды сборки — корнем сайта будет `index.html`.

## Превью ссылки (баннер)

`og-image.png` (1200 × 630) показывается как карточка, когда ссылкой на сайт делятся в Telegram, WhatsApp, VK, Facebook, X и т. д.
Мессенджерам нужна абсолютная ссылка на картинку, поэтому `build.sh` при сборке подставляет адрес сайта:

- на **Vercel** — автоматически из `VERCEL_PROJECT_PRODUCTION_URL` (настройки в `vercel.json`);
- на **GitHub Pages** — из адреса Pages в workflow;
- для своего домена задайте переменную окружения `SITE_URL`, например `https://easymix.kz`.

Проверить карточку после деплоя: https://www.opengraph.xyz/ или отправить ссылку себе в Telegram.
