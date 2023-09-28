import React from 'react';
import { motion, spring } from 'framer-motion';

interface CardpostProps {
    title: string;
    summary: string;
    linkUrl: string;
    imageUrl: string;
    category: string;
}

const Cardpost: React.FC<CardpostProps> = ({ title, summary, linkUrl, imageUrl, category }) => {
    const categoryColors: { [key: string]: string } = {
        'História': 'bg-red-500', // Substitua 'Categoria1' pela categoria desejada e 'bg-red-500' pela cor desejada
        'Química': 'bg-teal-500', // Adicione mais categorias e cores conforme necessário
        'Geografia': 'bg-yellow-500',
        'Física': 'bg-indigo-500',

        'Programação - Iniciante': 'bg-blue-500',

        // ...
    };

    // Use a categoria para obter a cor correspondente
    const categoryColor = categoryColors[category] || 'bg-gray-500'; // Cor padrão se a categoria não for encontrada

    return (
        <motion.div
            className="bg-gray-700 w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/5 justify-around shadow-md text-white rounded-lg relative m-2"
            initial={{ opacity: 0, scale: 0.8 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.5, type: "spring", stiffness: 200 }}
            whileHover={{ scale: 1.02 }}
        >
            <div
                className="h-40 rounded-t-lg"
                style={{
                    backgroundSize: 'cover',
                    backgroundPosition: 'center',
                    backgroundImage: `url(${imageUrl})`,
                }}
            ></div>

            <div className="absolute top-0 left-0 m-2">
                <div className={`text-sm p-1 rounded-md ${categoryColor}`}>{category}</div>
            </div>

            <div className="bg-black h-48 p-4 text-sm rounded-b-md">
                <h2 className="text-lg font-bold mb-2">{title}</h2>
                <p className="line-clamp-2 text-gray-300">{summary}</p>
                <a
                    href={linkUrl}
                    className="text-blue-600 mt-2 inline-block hover:text-blue-500 transition-all hover:underline"
                >
                    Leia mais
                </a>
            </div>
        </motion.div>
    );
};

export default Cardpost;
