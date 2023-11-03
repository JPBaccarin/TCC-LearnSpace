import React, { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { FaChevronDown, FaChevronUp } from 'react-icons/fa';
import { minhaImagem2 } from './img/images';

interface FAQItem {
    question: string;
    answer: string;
    imagem: any;
}


const FAQSection: React.FC = () => {
    const faqData: FAQItem[] = [
        {
            question: 'Quiz com questões do enem',
            answer: 'Nossa plataforma oferecerá a prática de questões do Enem como uma valiosa ferramenta de preparação para o vestibular. Você tem a liberdade de escolher a matéria que deseja estudar, garantindo uma preparação personalizada e eficaz.',
            imagem: minhaImagem2,
        },
        {
            question: 'Comunicação Aprimorada entre Alunos e Professores',
            answer: 'No futuro, nossa plataforma contará com um chat integrado que facilitará a comunicação entre alunos e professores. Isso permitirá a discussão de dúvidas tanto nas matérias quanto em questões de vestibulares, proporcionando uma experiência de aprendizado mais colaborativa e eficaz.',
            imagem: minhaImagem2,
        },
        {
            question: 'Recursos Avançados de Anotação e Criação de Mapas Mentais',
            answer: 'No futuro, nossa plataforma apresentará um sistema integrado que permitirá aos alunos fazer anotações em artigos de estudo e até mesmo criar mapas mentais para visualizar e aprimorar seu entendimento do conteúdo estudado. Essas ferramentas avançadas de organização e revisão garantirão uma experiência de aprendizado mais eficiente e produtiva.',
            imagem: minhaImagem2,
        },
    ];

    const [selectedQuestion, setSelectedQuestion] = useState<number | null>(null);

    const toggleQuestion = (index: number) => {
        setSelectedQuestion(selectedQuestion === index ? null : index);
    };

    return (
        <section className="bg-gray-900 text-white py-16">
            <div className="container mx-auto text-center">                
                <div className="grid grid-cols-1 gap-4">
                    {faqData.map((faq, index) => (
                        <div
                            key={index}
                            className="bg-gray-800   border border-gray-900 hover:border-red-600/20 p-6 rounded-lg shadow-md cursor-pointer hover:shadow-lg transition duration-300"
                            onClick={() => toggleQuestion(index)}
                        >
                            <div className="flex justify-between items-center ">
                                <h3 className="text-xl font-semibold">{faq.question}</h3>
                                <motion.div
                                    className="text-2xl"
                                    initial={false}
                                    animate={{ rotate: selectedQuestion === index ? 0 : 180 }}
                                >
                                    {selectedQuestion === index ? (
                                        <FaChevronUp />
                                    ) : (
                                        <FaChevronUp />
                                    )}
                                </motion.div>
                            </div>
                            <AnimatePresence>
                                {selectedQuestion === index && (
                                    <motion.p
                                        className="mt-4 text-left"
                                        initial={{ opacity: 0, height: 0 }}
                                        animate={{ opacity: 1, height: 'auto' }}
                                        exit={{ opacity: 0, height: 0 }}
                                    >
                                        {faq.answer}
                                    </motion.p>
                                )}
                            </AnimatePresence>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
};

export default FAQSection;
