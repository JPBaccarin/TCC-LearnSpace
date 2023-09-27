import React, { useEffect } from 'react';
import { motion } from 'framer-motion';
import Image from 'next/image';
const colors = ['#EF4444', '#F04343', '#DC2626', '#B91C1C', '#991B1B'];

const Hero: React.FC = () => {
  useEffect(() => {
    const rainContainer = document.querySelector('.rain-container');

    if (rainContainer) {
      for (let i = 0; i < 160; i++) {
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
        rainElement.textContent = String.fromCharCode(Math.random() * 150 + 65);

        rainContainer.appendChild(rainElement);
      }
    }
  }, []);

  return (
    <section className="bg-gray-900 h-screen max-h-[600px] flex  p-32 flex-col justify-center items-center text-white relative overflow-hidden transition- duration-150">
      <div className="rain-container">
        {/* Os elementos da chuva de letras serão criados dinamicamente aqui */}
      </div>
      
      <motion.div
        className="flex flex-col items-left text-left z-5 bg-gray-900/75 backdrop-blur-sm p-6 rounded-xl"
        initial={{ opacity: 0, y: 50 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 1 }}
      >
        
        <motion.div
          className="sm:text-4xl text-4xl font-extrabold mb-4"
          whileHover={{ scale: 1.02 }}
        >
          <h1 >Como nos contatar</h1>
        </motion.div>

        <motion.div
          className="sm:text-5xl text-4xl font-extrabold mb-4"
          whileHover={{ scale: 1.02}}
        >
         
        </motion.div>

        
        <motion.p
          className="sm:text-lg text-left px-10 mb-8"
          whileHover={{ scale: 1.02 }}
        >
         Contatar um estudante envolvido no projeto de um site educacional é mais simples do que você imagina. Eles estarão disponíveis na escola ou podem ser contatados por telefone.

        Nossos estudantes estão trabalhando incansavelmente no desenvolvimento de um site inovador que visa melhorar a experiência de aprendizado de todos. Se você se interessa pelo projeto e deseja conversar com os estudantes responsáveis, há duas maneiras fáceis de fazê-lo.
        <br/>
        Primeiramente, você pode visitar a escola. Os estudantes estarão trabalhando no projeto durante os horários de aula e, em muitos casos, também após o término das aulas. Você pode verificar o horário em que eles estarão no laboratório de informática ou na sala de desenvolvimento do projeto, onde ficarão felizes em receber visitantes interessados em saber mais sobre o site educacional em construção.
        <br/>
        Além disso, se preferir, você pode ligar para a escola e pedir para ser direcionado aos estudantes responsáveis pelo projeto do site educacional. A secretaria da escola terá prazer em ajudá-lo a entrar em contato com eles ou fornecer informações sobre como você pode alcançá-los diretamente.
        
        Estamos ansiosos para compartilhar nosso progresso com todos que compartilham nosso interesse pela educação e pela inovação. Não hesite em visitar a escola ou nos ligar para conversar com nossos dedicados estudantes e saber mais sobre como este emocionante projeto educacional está sendo desenvolvido.
          <br/>          

        </motion.p>
        

      </motion.div>
    </section>
  );
};

export default Hero;
