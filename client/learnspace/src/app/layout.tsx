'use client'
import Sidebar from '@/components/sidebar/Sidebar'
import './globals.css'
import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import { usePathname } from 'next/navigation'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'LearnSpace',
  description: 'LearnSpace - Plataforma de Estudos com IA',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const router = usePathname() // Obtenha o objeto router

  // Verifique se a rota atual é a LandingPage
  const isLandingPage = router === '/landingpage'

  return (
    <html lang="pt-br">
      <body className={inter.className}>
        {/* Renderize a Sidebar apenas se não estiver na LandingPage */}
        {!isLandingPage && <Sidebar />}
        {children}
      </body>
    </html>
  )
}
