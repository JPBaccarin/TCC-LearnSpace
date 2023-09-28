import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { redacao, quiz, iaenglish, learning } from './images';
import Image from 'next/image';

type NavbarItemProps = {
  title: string;
  description: string;
  image: any;
};

const Funcionalidades: React.FC = () => {
  const navbarItems: NavbarItemProps[] = [
    {
      title: "IA english",
      description: "Essa funcionalidade foi projetada para aprimorar as habilidades de comunicação em inglês do aluno, seja na interação com outras pessoas ou na melhoria da pronúncia, tudo isso com o suporte de uma IA.Essa funcionalidade permite aos alunos aprimorar suas habilidades de inglês de várias maneiras, tornando o aprendizado mais interativo e eficaz.",
      image: quiz,
    },
    {
      title: "Corretor IA",
      description: "O Corretor IA é uma funcionalidade dedicada a aprimorar a qualidade da sua escrita, fornecendo correções e sugestões de melhoria em suas redações, tudo isso através de uma IA sofisticada.Essa funcionalidade proporciona uma maneira eficaz e conveniente de aprimorar suas habilidades de escrita, garantindo que suas redações estejam livres de erros e sejam mais impactantes.",
      image: redacao,
    },
    {
      title: "Quiz",
      description: "Essa funcionalidade suscita diversas perguntas acerca dos temas que o aluno ou internauta pode ter explorado em seu estudo no site de ensino,essa funcionalidade  tambem permite que os usuários tenham uma visão mais clara dos temas e tópicos que estão disponíveis para estudo no site de ensino.",
      image: iaenglish,
    },
    {
      title: "Learning",
      description: "O recurso de Learning oferece uma ampla gama de conteúdos educacionais que abrangem matérias escolares e diversos campos de conhecimento, tornando o aprendizado acessível e envolvente. Este sistema é suportado por um CMS de última geração, que facilita a criação, gestão e entrega de conteúdo educacional de alta qualidade. Alguns destaques incluem: Tecnologia CMS Avançada , Diversidade de Matérias e etc",
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
                <Image
                  src={selectedItem.image}
                  alt={selectedItem.title}
                  width={300} // Defina a largura desejada
                  height={300} // Defina a altura desejada
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
