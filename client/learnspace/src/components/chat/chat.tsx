'use client'

import IconCopy from '@/icons/IconCopy';
import { useChat } from 'ai/react'
import ReactMarkdown from 'react-markdown';

type Props = {}

function chat({ }: Props) {
    const { messages, input, handleInputChange, handleSubmit, } = useChat()

    const copyText = (text: string) => {
        const textarea = document.createElement('textarea');
        textarea.value = text;
        document.body.appendChild(textarea);
        textarea.select();
        document.execCommand('copy');
        document.body.removeChild(textarea);
    };

    return (

        <div className='flex  bg-gray-800 p-2 flex-col items-center justify-center w-full sm:w-3/4 h-fit m-0 sm:m-2 text-white rounded-lg '>
            <div className='w-5/6 h-fit flex flex-col max-h-screen '>
                <div className='flex flex-row mt-2 p-2 border-b border-red-500/25 border-dashed justify-between'>
                    <h1 className='font-bold text-xl text-gray-200 w-fit '>LearnSpace AI</h1>
                    <select name="optionSelected" id="optionSelected" className='text-black cursor-pointer p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white'>
                        <option value="corrigirRedacoes" id="corrigirRedacoes" selected>Corrigir redações</option>
                        <option value="criarPerguntas" id="criarPerguntas">Criar perguntas</option>
                    </select>
                </div>
                <div className='overflow-y-scroll px-2'>
                    {messages
                        .filter((m) => m.role !== 'system')
                        .map(m => {
                            return (
                                <div key={m.id} className='flex flex-row my-2 p-4 rounded-md bg-gray-900/50 '>
                                    <div className='h-12 w-12 mr-2' >
                                        {m.role === 'user' && (
                                            <img src="https://placehold.co/400" alt="" className='rounded-full' />
                                        )}

                                        {m.role === 'assistant' && (
                                            <img src="favicon.ico" alt="" className='rounded-full' />
                                        )}
                                    </div>
                                    <p className='leading-relaxed w-full'>
                                        <div className='flex flex-row justify-between'>
                                            <span className='block font-bold '>{m.role === 'user' ? 'usuário' : 'AI'}</span>
                                            <div className='group transition-all duration-300'>
                                                <IconCopy
                                                    className='text-gray-500 cursor-pointer hover:text-gray-200'
                                                    onClick={() => copyText(m.content)}
                                                />
                                                <span
                                                    className="group-hover:visible transition-all duration-300 block invisible bg-gray-800 text-gray-200 text-center p-2 mt-2 absolute text-xs">
                                                    Copiar
                                                </span>
                                            </div>
                                        </div>
                                        <section id="content" className=''>
                                            <ReactMarkdown className='chatresponse'>{m.content}</ReactMarkdown>

                                        </section>
                                    </p>
                                </div>
                            )
                        })}

                </div>
            </div>
            <form onSubmit={handleSubmit} className='w-full flex flex-row items-center p-4 rounded-md bg-gray-800 shadow-lg '>
                <textarea
                    className='p-2 shadow-md shadow-red-500/10 border w-full text-justify max-h-40  h-20 border-red-500 rounded-lg outline-none focus:out focus:shadow-outline bg-gray-700 caret-red-500 overflow-auto '
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
