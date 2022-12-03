
import { PrismaClient } from '@prisma/client'

const client = new PrismaClient({
  log: ['error', 'info', 'query', 'warn']
})

export { client }
