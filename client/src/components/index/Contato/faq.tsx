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
            question: 'Nosso número',
            answer: '+55 19 99507-8743',
        },
        {
            question: 'Quantas horas do dia estamos dipostos para atender',
            answer: 'dias úteis, das 6h às 21h',
        },
        {
            question: 'Atendimento por assistente',
            answer: 'Em processo',
        },
    ];

    const [selectedQuestion, setSelectedQuestion] = useState<number | null>(null);

    const toggleQuestion = (index: number) => {
        setSelectedQuestion(selectedQuestion === index ? null : index);
    };

    return (
        <section className="bg-gray-900 text-white py-16">
            <div className="container mx-auto text-center">
                <h2 className="text-3xl font-semibold mb-6">Outros meios</h2>
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
