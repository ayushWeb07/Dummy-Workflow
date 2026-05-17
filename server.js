const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    res.send('Hello Porshe 911 GT3RS!')
})

app.listen(port, () => {
    console.log(`Example funny app listening on port ${port}`)
})
