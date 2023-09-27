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
    return (
        <motion.div
        className="bg-gray-700 w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/5 justify-around shadow-md text-white rounded-lg relative m-2"
        initial={{ opacity: 0, scale: 0.8 }}
        animate={{ opacity: 1, scale: 1 }}
        transition={{ duration: 0.5, type:"spring", stiffness:"200"  }}
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
            <div className="bg-yellow-500 rounded-md text-sm p-1">{category}</div>
        </div>

        <div className="bg-black h-44 p-4 text-sm rounded-b-md">
            <h2 className="text-lg font-bold mb-2">{title}</h2>
            <p className="">{summary}</p>
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
