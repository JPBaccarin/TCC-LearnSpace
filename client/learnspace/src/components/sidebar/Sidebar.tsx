'use client'

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { FaBars, FaRegLightbulb, FaClipboardList, FaPen, FaPenSquare, FaMicrophoneAlt } from 'react-icons/fa';
import { AiOutlineClose } from 'react-icons/ai';

interface SidebarProps {
    // Se você tiver alguma prop específica, pode adicioná-la aqui.
}

const Sidebar: React.FC<SidebarProps> = () => {
    const [isOpen, setIsOpen] = useState<boolean>(false);

    const toggleSidebar = () => {
        setIsOpen(!isOpen);
    };

    useEffect(() => {
        const handleOutsideClick = (e: MouseEvent) => {
            const sidebar = document.getElementById('sidebar');
            const toggleButton = document.getElementById('toggle-button');

            if (sidebar && !sidebar.contains(e.target as Node) && toggleButton && !toggleButton.contains(e.target as Node)) {
                setIsOpen(false);
            }
        };

        document.addEventListener('click', handleOutsideClick);

        return () => {
            document.removeEventListener('click', handleOutsideClick);
        };
    }, []);

    return (
        <div>
            <button
                onClick={toggleSidebar}
                className={`fixed top-4 left-4 bg-white dark:bg-gray-800 border-2 border-gray-300 dark:border-gray-700 rounded-full p-2 z-40 ${isOpen ? 'hidden' : 'block'
                    }`}
            >
                <FaBars className='dark:fill-white' size={18} />
            </button>
            <div
                id="sidebar"
                className={`fixed top-0 left-0 h-screen w-52 dark:text-white bg-white dark:bg-gray-800 shadow-lg transform transition-transform z-50 ease-in-out ${isOpen ? 'translate-x-0' : '-translate-x-full'
                    }`}
            >
                <button
                    onClick={toggleSidebar}
                    className="absolute top-4 right-4 bg-white dark:bg-gray-800 border-2 border-gray-300 dark:border-gray-700 rounded-full p-2"
                >
                    <AiOutlineClose className='dark:fill-white' size={18} />
                </button>
                <div className="flex flex-col items-center h-full mt-4 py-8">
                    <img
                        src="https://via.placeholder.com/150"
                        alt="Foto do Usuário"
                        className="w-24 h-24 rounded-full mb-4"
                    />
                    <h1 className="text-lg font-semibold">Usuário</h1>
                    <div className="flex flex-col mt-4">

                        <Link href="/" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaPen className="inline-block mr-2 fill-red-500" />
                            Pagina Inicial
                        </Link>

                        <Link href="/learning" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaRegLightbulb className="inline-block mr-2 fill-red-500" />
                            Learning

                        </Link>
                        <Link href="/dashboardquiz" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaClipboardList className="inline-block mr-2 fill-red-500" />
                            Quiz

                        </Link>
                        <Link href="/essay" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaPenSquare className="inline-block mr-2 fill-indigo-500" />
                            Essay

                        </Link>
                        <Link href="/speaking" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaMicrophoneAlt className="inline-block mr-2 fill-indigo-500" />
                            Speaking

                        </Link>
                        <Link href="/periodic-table" passHref className='mb-2 py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-700 rounded'>

                            <FaMicrophoneAlt className="inline-block mr-2 fill-indigo-500" />
                            Periodict-Table

                        </Link>


                    </div>
                </div>
            </div>
        </div>
    );
};

export default Sidebar;
