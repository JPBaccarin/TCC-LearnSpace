'use client'
import { useState, useEffect } from 'react';
import { FaBars, FaRegLightbulb, FaClipboardList, FaPenSquare, FaMicrophoneAlt, FaPen, FaFlask } from 'react-icons/fa';
import { AiOutlineClose } from 'react-icons/ai';
import { motion } from 'framer-motion';
import Link from 'next/link';
import Image from 'next/image';
import { usePathname } from 'next/navigation';

interface SidebarProps {
    // Se você tiver alguma prop específica, pode adicioná-la aqui.
}

const sidebarItems = [
    { label: 'Pagina Inicial', href: '/', icon: <FaRegLightbulb className="fill-red-500" /> },
    { label: 'Learning', href: '/learning', icon: <FaClipboardList className="fill-red-500" /> },
    { label: 'Quiz', href: '/dashboardquiz', icon: <FaPenSquare className="fill-red-500" /> },
    { label: 'Periodic Table', href: '/periodic-table', icon: <FaFlask className="fill-red-500" /> },
    { label: 'Speaking', href: '/speaking', icon: <FaMicrophoneAlt className="fill-indigo-500" /> },
    { label: 'Login', href: '/login', icon: <FaPen className="fill-indigo-500" /> },
    { label: 'corretor', href: '/CorretorComponent', icon: <FaPen className="fill-indigo-500" /> },
    
];

const Sidebar: React.FC<SidebarProps> = () => {
    const [isOpen, setIsOpen] = useState<boolean>(false);
    const router = usePathname();

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
                className={`fixed top-4 left-4 bg-white dark:bg-gray-800 border-2 border-gray-300 dark:border-gray-700 rounded-md p-2 z-40 ${isOpen ? 'hidden' : 'block'}`}
                id="toggle-button"
            >
                <FaBars className='dark:fill-white' size={18} />
            </button>
            <motion.div
                id="sidebar"
                className={`fixed top-0 left-0 h-screen w-52 dark:text-white bg-white dark:bg-gray-800 shadow-lg transform transition-transform z-50 ${isOpen ? 'translate-x-0' : '-translate-x-full'
                    }`}
                initial={{ x: -300 }}
                animate={{ x: isOpen ? 0 : -300 }}
                transition={{ duration: 0.1, ease: 'easeInOut' }}
            >
                <button
                    onClick={toggleSidebar}
                    className="absolute top-4 right-4 bg-white dark:bg-gray-800 border-2 border-gray-300 dark:border-gray-700 rounded-md p-2"
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
                        {sidebarItems.map((item, index) => (
                            <Link key={index} href={item.href} passHref>
                                <motion.p
                                    className={`mb-2 py-2 px-4 flex items-center hover:bg-gray-100 dark:hover:bg-gray-700 fill-red-500 rounded ${router === item.href ? 'bg-gray-900/75' : ''}`}
                                    whileHover={{ scale: 1.1 }}
                                    whileTap={{ scale: 0.9 }}
                                >
                                    {item.icon}
                                    <span className="ml-2">{item.label}</span>
                                </motion.p>
                            </Link>
                        ))}
                    </div>
                </div>
            </motion.div>
        </div>
    );
};

export default Sidebar;

