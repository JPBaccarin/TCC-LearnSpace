import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';

type NavbarItemProps = {
  title: string;
  description: string;
  image: string;
};

const SiteExplanation: React.FC = () => {
  const navbarItems: NavbarItemProps[] = [
    {
      title: "Funcionalidade 1",
      description: "Descrição da Funcionalidade 1. Aqui estão algumas informações adicionais sobre esta funcionalidade:",
      image: "https://placehold.co/600x400",
    },
    {
      title: "Funcionalidade 2",
      description: "Descrição da Funcionalidade 2. Além disso, você pode ver alguns detalhes extras aqui:",
      image: "https://placehold.co/600x400",
    },
    {
      title: "Funcionalidade 3",
      description: "Descrição da Funcionalidade 3. Incluindo detalhes importantes:",
      image: "https://placehold.co/600x400",
    },
    {
      title: "Funcionalidade 4",
      description: "Descrição da Funcionalidade 4. E aqui estão algumas informações adicionais:",
      image: "https://placehold.co/600x400",
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
            className={`${
              selectedItem === item ? 'text-blue-500' : 'bg-gray-800'
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
                  <ul className="list-disc ml-4">
                    <li>Item 1</li>
                    <li>Item 2</li>
                    <li>Item 3</li>
                  </ul>
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

export default SiteExplanation;
