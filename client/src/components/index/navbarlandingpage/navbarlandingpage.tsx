import React, { useState } from 'react';
import { FiMenu, FiX } from 'react-icons/fi';
import {learnspace } from '../imgs/images';   // Substitua FiMenu e FiX pelos ícones desejados
import Image from 'next/image';


const NavbarLandingPage: React.FC = () => {
    const [isOpen, setIsOpen] = useState(false);

    const toggleNavbar = () => {
        setIsOpen(!isOpen);
    };

    return (
        <nav className="backdrop-blur-sm p-4 sticky z-50 top-0 shadow-sm">
            <div className="container mx-auto flex justify-between items-center">
                <div className='flex flex-row items-center font-bold text-white '>
                    {/* Use o componente Image para renderizar a imagem */}
                    <Image className=' h-10 w-10' src={learnspace} alt='' />
                    <p className=' text-red-600'>Learn</p><br></br>
                    <p>Space</p>

                </div>

                <div className="hidden md:flex space-x-4">
                    <a href="../landingpage" className="text-white hover:text-gray-300">Página Inicial</a>
                    <a href="landingpage/Sobre" className="text-white hover:text-gray-300">Sobre Nós</a>
                    <a href="./Contato" className="text-white hover:text-gray-300">Contato</a>
                </div>

                <div className="md:hidden flex items-center">
                    <button onClick={toggleNavbar} className="text-white">
                        {isOpen ? <FiX className="text-2xl" /> : <FiMenu className="text-2xl" />}
                    </button>
                </div>
            </div>

            {isOpen && (
                <div className="md:hidden bg-gray-500">
                    <a href="landingpage" className="block py-2 px-4 text-white hover:bg-gray-600">Página Inicial</a>
                    <a href="/Sobre" className="block py-2 px-4 text-white hover:bg-gray-600">Sobre Nós</a>
                    <a href="/Contato" className="block py-2 px-4 text-white hover:bg-gray-600">Contato</a>
                </div>
            )}
        </nav>
    );
};

export default NavbarLandingPage;