const Koa = require('koa')
const koaSwagger = require('koa2-swagger-ui')
const spec = require('./schema.json')

const app = new Koa()
const swagger = koaSwagger({
  routePrefix: '/',
  swaggerOptions: {
    spec,
  },
})

app.use(swagger)
const port = process.env.PORT || 3000
app.listen(port)
