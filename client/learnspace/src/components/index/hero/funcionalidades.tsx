import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import {  redacao, quiz,iaenglish,learning } from './images';

type NavbarItemProps = {
  title: string;
  description: string;
  image: any;
};

const Funcionalidades: React.FC = () => {
  const navbarItems: NavbarItemProps[] = [
    {
      title: "IA english",
      description: "Essa funcionalida é feita para treinar, o aluno com sua comunicação em ingles com outras pessoas,ou lhe dar dicas sobre sua pronuncia, tudo sem acompanha por uma IA.",
      image: quiz,
    },
    {
      title: "Corretor IA",
      description: "Essa funcionalidade tem como principal objetivo corrigir redações, mostrando seus erros,e melhoramentos na sua escrita,tudo por uma IA",
      image: {redacao},
    },
    {
      title: "Quiz",
      description: "Essa funcionalidade traria varias questões sobre o que o aluno ou internauta teria estudado.",
      image: iaenglish,
    },
    {
      title: "Learning",
      description: "Essa funcionalida tras varios conteudos sobre materias escolares e diversas, para o aprendizado.",
      image: learning,
    },
  ];

  const [selectedItem, setSelectedItem] = useState<NavbarItemProps | null>(null);

  const handleItemClick = (item: NavbarItemProps) => {
    setSelectedItem(item);
  };

  return (
    <div className="flex flex-col items-center bg-gray-900 text-white min-h-screen sm:m-0 mx-2 text-sm sm:text-base">
      <div className="flex">
        {navbarItems.map((item) => (
          <button
            key={item.title}
            onClick={() => handleItemClick(item)}
            className={`${selectedItem === item ? 'text-blue-500' : 'bg-gray-800'
              } text-white p-2 rounded-md m-2`}
          >
            {item.title}
          </button>
        ))}
      </div>
      <AnimatePresence initial={false}>
        {selectedItem && (
          <motion.div
            className="mt-4"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
          >
            <div className="w-screen max-w-[1200px] flex-col sm:flex-row p-6 bg-gray-800/50 rounded-lg flex content-around justify-around gap-2">
              <div className="w-2/3">
                <motion.div className="w-5/6" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
                  <h1 className="text-2xl font-bold mb-2">{selectedItem.title}</h1>
                  <p>{selectedItem.description}</p>
                </motion.div>
              </div>
              <div className="w-1/3">
                <motion.img
                  src={selectedItem.image}
                  alt={selectedItem.title}
                  className="max-w-full rounded-md max-h-[500px]"
                  initial={{ opacity: 0 }}
                  animate={{ opacity: 1 }}
                  whileHover={{ scale: 1.1 }}
                  exit={{ opacity: 0 }}
                />
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
};

export default Funcionalidades;
