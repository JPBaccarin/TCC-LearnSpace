// app/chat.tsx -- client component
'use client'

// app/chat.tsx -- componente cliente
import { useChat } from 'ai/react'


import React from 'react'
import logo from '../../../public'

type Props = {}

function chat({ }: Props) {
    const { messages, input, handleInputChange, handleSubmit } = useChat()

    return (

        <div className='flex min-h-screen bg-gray-800 p-2 flex-col items-center justify-center w-2/4 h-fit m-2 text-white rounded-lg '>
            <div className='w-3/4 h-fit flex flex-col max-h-screen '>
                <div className='flex flex-col mt-2 p-2 border-b border-red-500/25 border-dashed '>
                    <h1 className='font-bold text-xl text-gray-200 w-fit '>LearnSpace AI</h1>
                </div>
                <div className='overflow-y-scroll px-2'>
                    <div className='flex flex-row my-2 p-4 rounded-md bg-gray-900/50 '>
                        <div className='h-24 w-24 mr-2' >
                            <img src="https://placehold.co/400" alt="" className='rounded-full' />
                        </div>
                        <p className='leading-relaxed'>
                            <span className='block font-bold '>User:</span>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea officia vel ducimus perferendis ab eos consequatur rem? Voluptatem corporis ipsa, aliquam sequi officiis ab fugiat magnam incidunt! Ex, quos debitis.
                        </p>
                    </div>
                    <div className='flex flex-row  my-2 p-4 rounded-md bg-gray-900/50 '>
                        <div className='h-24 w-24 mr-2' >
                            <img src='favicon.ico' alt="" className='rounded-full' />
                        </div>
                        <p className='leading-relaxed'>
                            <span className='block font-bold '>LearnSpace:</span>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea officia vel ducimus perferendis ab eos consequatur rem? Voluptatem corporis ipsa, aliquam sequi officiis ab fugiat magnam incidunt! Ex, quos debitis.
                        </p>
                    </div>
                    <div className='flex flex-row  my-2 p-4 rounded-md bg-gray-900/50 '>
                        <div className='h-24 w-24 mr-2' >
                            <img src='favicon.ico' alt="" className='rounded-full' />
                        </div>
                        <p className='leading-relaxed'>
                            <span className='block font-bold '>LearnSpace:</span>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea officia vel ducimus perferendis ab eos consequatur rem? Voluptatem corporis ipsa, aliquam sequi officiis ab fugiat magnam incidunt! Ex, quos debitis.
                        </p>
                    </div>
                    <div className='flex flex-row  my-2 p-4 rounded-md bg-gray-900/50 '>
                        <div className='h-24 w-24 mr-2' >
                            <img src='favicon.ico' alt="" className='rounded-full' />
                        </div>
                        <p className='leading-relaxed'>
                            <span className='block font-bold '>LearnSpace:</span>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea officia vel ducimus perferendis ab eos consequatur rem? Voluptatem corporis ipsa, aliquam sequi officiis ab fugiat magnam incidunt! Ex, quos debitis.
                        </p>
                    </div>
                </div>
            </div>
            <form onSubmit={handleSubmit} className='w-full flex flex-row items-center p-4 rounded-md bg-gray-800 shadow-lg '>
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