import React, { useEffect } from 'react';
import { motion } from 'framer-motion';

const colors = ['#EF4444', '#F04343', '#DC2626', '#B91C1C', '#991B1B'];

const Hero: React.FC = () => {
  useEffect(() => {
    const rainContainer = document.querySelector('.rain-container');

    if (rainContainer) {
      for (let i = 0; i < 200; i++) {
        const randomColor = colors[Math.floor(Math.random() * colors.length)];
        const fontSize = `${Math.random() * 25 + 15}px`;
        const opacity = Math.random().toFixed(2); // Corrigido para transformar em string com 2 casas decimais
        const rotation = Math.random() * 360 - 10;
        const duration = `${Math.random() * 20 + 4}s`;

        const rainElement = document.createElement('div');
        rainElement.className = 'rain';
        rainElement.style.left = `${Math.random() * 100}%`;
        rainElement.style.top = `${-Math.random() * 100}%`;
        rainElement.style.animation = `rain ${duration} cubic-bezier(0.19, 1, 0.22, 1) infinite`;
        rainElement.style.color = randomColor;
        rainElement.style.fontSize = fontSize;
        rainElement.style.opacity = opacity; // Corrigido para string
        rainElement.style.transform = `rotate(${rotation}deg)`;
        rainElement.textContent = String.fromCharCode(Math.random() * 200 + 65);

        rainContainer.appendChild(rainElement);
      }
    }
  }, []);

  return (
    <section className="bg-gray-900 h-screen max-h-[600px] flex flex-col justify-center items-center text-white relative overflow-hidden transition- duration-150">
      <div className="rain-container">
        {/* Os elementos da chuva de letras serão criados dinamicamente aqui */}
      </div>
      <motion.div
        className="flex flex-col items-center text-center z-10 bg-gray-900/75 backdrop-blur-sm p-6 rounded-xl"
        initial={{ opacity: 0, y: 50 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 1 }}
      >
        <motion.div
          className="sm:text-5xl text-4xl font-extrabold mb-4"
          whileHover={{ scale: 1.02 }}
        >
          Bem-vindo ao LearnSpace
        </motion.div>
        <motion.p
          className="sm:text-lg text-base mb-8"
          whileHover={{ scale: 1.02 }}
        >
          Sua plataforma de estudos com IA
        </motion.p>
        <motion.a
          href="/login/register"
          className="bg-white text-blue-500 py-2 px-6 rounded-full sm:text-lg hover:bg-blue-500 hover:text-white transition duration-300 ease-in-out text-base"
          whileHover={{ scale: 1.1 }}
        >
          Comece Agora
        </motion.a>
      </motion.div>
    </section>
  );
};

export default Hero;
