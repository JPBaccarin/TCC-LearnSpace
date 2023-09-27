

import React, { useState } from 'react';
import { FiMenu, FiX } from 'react-icons/fi'; // Substitua FiMenu e FiX pelos ícones desejados

const NavbarLandingPage: React.FC = () => {
    const [isOpen, setIsOpen] = useState(false);

    const toggleNavbar = () => {
        setIsOpen(!isOpen);
    };

    return (
        <nav className="backdrop-blur-sm p-4 sticky z-50 top-0 shadow-sm">
            <div className="container mx-auto flex justify-between items-center">
                <div className="text-white font-bold text-xl">Seu logo</div>

                <div className="hidden md:flex space-x-4">
                    <a href="../landingpage" className="text-white hover:text-gray-300">Página Inicial</a>
                    <a href="../Sobre" className="text-white hover:text-gray-300">Sobre Nós</a>
                    <a href="../Contato" className="text-white hover:text-gray-300">Contato</a>
                </div>

                <div className="md:hidden flex items-center">
                    <button onClick={toggleNavbar} className="text-white">
                        {isOpen ? <FiX className="text-2xl" /> : <FiMenu className="text-2xl" />}
                    </button>
                </div>
            </div>

            {isOpen && (
                <div className="md:hidden bg-gray-500">
                    <a href="#" className="block py-2 px-4 text-white hover:bg-gray-600">Página Inicial</a>
                    <a href="/Sobre" className="block py-2 px-4 text-white hover:bg-gray-600">Sobre Nós</a>
                    <a href="#" className="block py-2 px-4 text-white hover:bg-gray-600">Contato</a>
                </div>
            )}
        </nav>
    );
};

export default NavbarLandingPage;
