import userRoutes from './user.route'
import authRoutes from './auth.route'
import { Router } from 'express'
import profileRoutes from './profile.route'

const router = Router()

router.use('/users', userRoutes)
router.use('/auth', authRoutes)
router.use('/profile/me', profileRoutes)

export default router
