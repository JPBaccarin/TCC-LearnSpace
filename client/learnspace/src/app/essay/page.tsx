import Chat from '@/components/chat/chat'

export const runtime = 'edge'

export default function Page() {
    return (
        <body className='flex items-center px-4 py-3 w-full text-white bg-gray-900'>
            <Chat />
        </body>
    );  
}