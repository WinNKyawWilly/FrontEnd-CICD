const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World! Testing');
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});