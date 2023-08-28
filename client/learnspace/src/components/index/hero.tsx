import React from 'react';
import { motion } from 'framer-motion';


const colors = ['#EF4444', '#F04343', '#DC2626', '#B91C1C', '#991B1B',];
// Cores diferentes

const Hero: React.FC = () => {
    return (
        <section className="bg-gray-900 h-screen max-h-[600px] flex flex-col justify-center items-center text-white relative overflow-hidden transition- duration-150">
            {/* Adicione a div com o efeito de chuva de letras aqui */}
            <div className="rain-container">
                {Array.from({ length: 200 }, (_, index) => {
                    const randomColor = colors[Math.floor(Math.random() * colors.length)];
                    const fontSize = `${Math.random() * 25 + 15}px`; // Tamanho da fonte aleatório
                    const opacity = Math.random(); // Opacidade aleatória
                    const rotation = Math.random() * 360 - 10; // Rotação aleatória entre -10 e 10 graus

                    // Gere uma duração aleatória com diminuição de velocidade
                    const duration = `${Math.random() * 20 + 4}s`;
                    const animationKeyframes = `rain ${duration} cubic-bezier(0.19, 1, 0.22, 1) infinite`;

                    return (
                        <div
                            key={index}
                            className="rain"
                            style={{
                                left: `${Math.random() * 100}%`, /* Posição horizontal aleatória */
                                top: `${-Math.random() * 100}%`, /* Posição vertical aleatória (começa acima da div) */
                                animation: animationKeyframes, // Aplicar a animação com a duração variável
                                color: randomColor, // Cor aleatória
                                fontSize: fontSize, // Tamanho da fonte variável
                                opacity: opacity, // Opacidade variável
                                transform: `rotate(${rotation}deg)`, // Rotação aleatória
                            }}
                        >
                            {/* Substitua o conteúdo das divs com as letras que desejar */}
                            {String.fromCharCode(Math.random() * 200 + 65)}
                        </div>
                    );
                })}
            </div>
            <motion.div
                className="flex flex-col items-center text-center z-10 bg-gray-900/75 backdrop-blur-sm p-6 rounded-xl"
                initial={{ opacity: 0, y: 50 }} // Animação inicial de fade-in e deslizar para cima
                animate={{ opacity: 1, y: 0 }} // Animação ao aparecer
                transition={{ duration: 1 }}
            >
                <motion.div
                    className="sm:text-5xl text-4xl font-extrabold mb-4"
                    whileHover={{ scale: 1.02, }} // Aumenta o tamanho e muda a cor ao passar o mouse
                >
                    Bem-vindo ao LearnSpace
                </motion.div>
                <motion.p
                    className="sm:text-lg text-base mb-8"
                    whileHover={{ scale: 1.02,}} // Aumenta o tamanho e muda a cor ao passar o mouse
                >
                    Sua plataforma de estudos com IA
                </motion.p>
                <motion.a
                    href="#"
                    className="bg-white text-blue-500 py-2 px-6 rounded-full sm:text-lg hover:bg-blue-500 hover:text-white transition duration-300 ease-in-out text-base"
                    whileHover={{ scale: 1.1 }} // Aumenta o tamanho ao passar o mouse
                >
                    Comece Agora
                </motion.a>
            </motion.div>
        </section>
    );
};

export default Hero;
