const express = require('express');
const app = express();
app.get('/', (_, res) => res.send('Hello from ACR → Web App!!!'));
app.get('/healthz', (_, res) => res.send('ok'));
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => console.log(`listening on ${PORT}`));
