import React, { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { FaChevronDown, FaChevronUp } from 'react-icons/fa';

interface FAQItem {
    question: string;
    answer: string;
}

const FAQSection: React.FC = () => {
    const faqData: FAQItem[] = [
        {
            question: 'Vocês pretendem melhorar ainda mais?',
            answer: 'Com certeza! Estamos em constante aperfeiçoamento para oferecer a melhor experiência possível.',
        },
        {
            question: 'Vocês planejam oferecer planos pagos para o GPT-3 e GPT-4?',
            answer: 'Sim, estamos trabalhando em planos pagos para permitir que os usuários desfrutem de recursos avançados do GPT-3 e GPT-4.',
        },
        {
            question: 'Quanto custarão esses planos?',
            answer: 'Estamos planejando oferecer duas opções de assinatura. Uma de $30 para acesso à maioria das aplicações e outra de $40 para a experiência completa do usuário.',
        },
        {
            question: 'Quais são os benefícios de assinar um plano pago?',
            answer: 'Ao assinar um plano pago, os usuários terão acesso a recursos premium, incluindo respostas mais avançadas do GPT-3 e GPT-4, suporte prioritário e muito mais.',
        },
        {
            question: 'Como posso cancelar minha assinatura?',
            answer: 'Você pode cancelar sua assinatura a qualquer momento em sua conta. Não há compromisso de longo prazo, e faremos o processo de cancelamento o mais simples possível.',
        },
        {
            question: 'Vocês têm planos de implementar seu sistema no sistema de ensino da Etec?',
            answer: 'Sim, temos planos futuros de colaborar com a Etec para implementar nossa tecnologia no sistema de ensino, proporcionando uma experiência de aprendizado avançada para os alunos.',
        },
    ];

    const [selectedQuestion, setSelectedQuestion] = useState<number | null>(null);

    const toggleQuestion = (index: number) => {
        setSelectedQuestion(selectedQuestion === index ? null : index);
    };

    return (
        <section className="bg-gray-900 text-white py-8">
            <div className="container mx-auto text-center">
                <h2 className="text-3xl font-semibold mb-6">Perguntas Frequentes</h2>
                <div className="grid grid-cols-1 gap-4">
                    {faqData.map((faq, index) => (
                        <div
                            key={index}
                            className="bg-gray-800 border border-gray-900 hover:border-red-600/20 p-6 rounded-lg shadow-md cursor-pointer hover:shadow-lg transition duration-300"
                            onClick={() => toggleQuestion(index)}
                        >
                            <div className="flex justify-between items-center">
                                <h3 className="text-xl font-semibold">{faq.question}</h3>
                                <motion.div
                                    className="text-2xl"
                                    initial={false}
                                    animate={{ rotate: selectedQuestion === index ? 0 : 180 }}
                                >
                                    {selectedQuestion === index ? (
                                        <FaChevronUp />
                                    ) : (
                                        <FaChevronDown />
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
