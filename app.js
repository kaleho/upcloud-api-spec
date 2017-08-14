const Koa = require('koa')
const koaSwagger = require('koa2-swagger-ui')

const app = new Koa()
const swagger = koaSwagger({
  routePrefix: '/',
  swaggerOptions: {
    url: 'http://petstore.swagger.io/v2/swagger.json',
  },
})

app.use(swagger)
const port = process.env.PORT || 3000
app.listen(port)
