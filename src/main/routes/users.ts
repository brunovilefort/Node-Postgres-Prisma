import { Router } from 'express'

export default (router: Router): void => {
  router.post('/users', (request, response) => {
    return response.status(201).send({ ok: 'ok' })
  })
}
