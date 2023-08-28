import React from 'react';

const Hero: React.FC = () => {
    return (
        <section className="bg-gradient-to-r from-gray-800 to-gray-900 h-screen max-h-[600px] flex flex-col justify-center items-center text-white relative overflow-hidden transition- duration-150  bgsvg2">
            <div className="text-5xl font-extrabold mb-4">Bem-vindo ao <strong className='  hover:text-red-500 hover:underline'>LearnSpace</strong> </div>
            <p className="text-lg mb-8">Sua plataforma de estudos com <strong className='hover:text-red-500 hover:underline'>IA</strong> </p>
            <a href="#" className="bg-white text-blue-500 py-2 px-6 rounded-full text-lg hover:bg-blue-500 hover:text-white transition duration-300 ease-in-out">
                Comece Agora
            </a>
        </section>
    );
};

export default Hero;
