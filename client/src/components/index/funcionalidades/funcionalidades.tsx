import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { quiz, iaingles, redacao, artigos } from '../imgs/images';
import Image from 'next/image';
import ReactMarkdown from 'react-markdown';
import '../landingpage.css'
type NavbarItemProps = {
    title: string;
    description: string;
    image: any;
};

const Funcionalidades: React.FC = () => {
    const navbarItems: NavbarItemProps[] = [
        {
            title: "IA de Conversação em Inglês",
            description: "Nossa IA de Conversação em Inglês é um marco de excelência, meticulosamente projetada para elevar suas habilidades de comunicação no idioma a níveis inimagináveis. Com o auxílio de uma IA de ponta, você **aprimorará sua pronúncia**, intensificará sua interação e dominará a **fluência em inglês**. Prepare-se para uma experiência de aprendizado interativo e altamente eficaz!\n\n**Principais Vantagens:**\n- Aprimoramento da pronúncia\n- Interatividade envolvente\n- Ensino altamente eficaz",
            image: iaingles,
          },
          {
            title: "Corretor IA",
            description: "O Corretor IA é seu parceiro supremo na busca pela escrita impecável. Nossa **IA sofisticada** oferece correções precisas e sugestões para aprimorar suas redações, incluindo a **correção de redações** do ENEM e um feedback abrangente em todas as cinco competências. Transforme seus textos em obras-primas livres de erros e conquiste o mundo com suas palavras!\n\n**Principais Vantagens:**\n- Correções precisas\n- Aperfeiçoamento da qualidade da escrita\n- Facilidade de uso",
            image: redacao,
          },
          {
            title: "Quiz - Questões de Vestibulares",
            description:
                "O Quiz é uma poderosa ferramenta que desafia seu conhecimento com **questões** criteriosamente **selecionadas de vestibulares**, ENEM, Fuvest e outros diversos vestibulares. Explore uma ampla variedade de perguntas sobre os tópicos que você estudou em nosso site de ensino. Alcance clareza sobre os temas disponíveis e teste sua expertise em diversas áreas!\n\n**Principais Vantagens:**\n- Questões de alta qualidade\n- Preparação abrangente para exames\n- Clareza sobre os temas estudados",
            image: quiz,
          },
          {
            title: "Artigos - Conteúdo de Qualidade",
            description: "Os **Artigos são sua entrada para um vasto universo de conhecimento**. Oferecemos uma ampla gama de conteúdo educacional, abrangendo matérias escolares e diversas áreas do conhecimento. Nosso sistema de gerenciamento de conteúdo de última geração torna o aprendizado acessível e envolvente. Descubra o poder da educação de qualidade!\n\n**Principais Vantagens:**\n- Diversidade de conteúdo educacional\n- Acessibilidade incomparável\n- Unificação de conhecimento",
            image: artigos,
          },
          


    ];

    const [selectedItem, setSelectedItem] = useState<NavbarItemProps | null>(null);

    const handleItemClick = (item: NavbarItemProps) => {
        setSelectedItem(item);
    };

    return (
        <div className="flex flex-col items-center bg-gray-900 text-white sm:m-0 mx-2 text-sm sm:text-base">
            <h1 className='text-4xl font-bold my-4'>Principais Funcionalidades</h1>
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
                                    <section>
                                        <ReactMarkdown className='text-justify conteudo'>
                                            {selectedItem.description}
                                        </ReactMarkdown>
                                    </section>
                                </motion.div>
                            </div>
                            <div className="w-1/3">
                                <Image className='rounded-md'
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
