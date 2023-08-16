// app/chat.tsx -- client component
'use client'

// app/chat.tsx -- componente cliente
import { useChat } from 'ai/react'


import React from 'react'

type Props = {}

function chat({ }: Props) {
    const { messages, input, handleInputChange, handleSubmit } = useChat()

    return (
        <div className='w-2/3 border border-white/10 rounded-lg bg-gray-900 flex flex-col content-around text-white p-2'>
            <div className='max-h-screen overflow-scroll  will-change-scroll bg-scroll bgscroll'>
                <h2 className='text-xl font-semibold p-2 w-fit  rounded-lg '>Chat GPT</h2>
                <ul className='p-2 rounded-lg'>
                    {messages.map((m, index) => (
                        <li key={index} className='my-2 border-t-2 py-2 border-red-500/10'>
                            {m.role === 'user' ? 'Aluno: ' : 'LearnSpace: '}
                            {m.content}

                        </li>
                    ))}
                </ul>
            </div>

            <form onSubmit={handleSubmit} className='flex z-30 absolute inset-x-20 bottom-0 mb-8 mx-10  flex-row items-center p-4 rounded-md bg-gray-800 shadow-lg '>
                <textarea
                    className='p-2 shadow-md shadow-red-500/10 border w-full   border-red-500 rounded-lg outline-none focus:out focus:shadow-outline bg-gray-700 '
                    value={input}
                    onChange={handleInputChange}
                    placeholder='Digite sua mensagem...'
                />
                <button className='bg-red-500 ml-2 p-2 rounded-lg shadow-lg hover:bg-red-600 transition-all ' type="submit">Enviar</button>
            </form>
        </div>
    )
}

export default chat