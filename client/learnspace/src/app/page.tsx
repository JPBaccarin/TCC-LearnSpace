// app/page.tsx -- server component

import Chat from '@/components/chat/chat'

export const runtime = 'edge'

import React from 'react'

function page() {
  return (
    <div className='p-2 flex items-center justify-center bg-gray-900 min-h-screen'>
      <Chat />
    </div>
  )
}

export default page