import Chat from '@/components/chat/chat'

export const runtime = 'edge'

export default function Page() {
    return (
        <body className='items-center flex justify-center py-48 w-full text-white bg-gray-900'>
            <Chat />
        </body>
    );  
}