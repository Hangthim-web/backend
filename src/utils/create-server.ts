import { config } from 'dotenv'
import cors from 'cors'
import express from 'express'
// import crypto from 'crypto'
// import userRoutes from '../routers/user.route'
import routes from '../routers/index'
import * as ErrorMiddlewares from '../middleware/errors.middleware'
import cookieParser from 'cookie-parser'
// import { availableParallelism } from 'os'

config()

const aVAr = express()

console.log('Hello this is me')
aVAr.use(express.json())
aVAr.use(express.urlencoded({ extended: true }))
aVAr.use(cors())
aVAr.use('/api', routes)
aVAr.use(cookieParser())

aVAr.use(ErrorMiddlewares.methodNotAllowed)
aVAr.use(ErrorMiddlewares.genericErrorHandler)

export default aVAr
