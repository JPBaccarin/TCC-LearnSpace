import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { community, mindmaps } from '../imgs/images';
import Image from 'next/image';
import ReactMarkdown from 'react-markdown';
import '../landingpage.css'
type NavbarItemProps = {
    title: string;
    description: string;
    image: any;
};

const FuncionalidadesFuturas: React.FC = () => {
    const navbarItems: NavbarItemProps[] = [
        {
            title: "Anotações Avançadas com IA e Mapas Mentais",
            description: "Prepare-se para uma revolução em seus estudos com o nosso próximo lançamento. Nosso **sistema de anotação** avançado combina a sofisticação dos **mapas mentais com a inteligência artificial** de ponta. Aqui está o que você pode esperar:\n\n**Principais Vantagens:**\n- Aprimoramento na organização de informações com mapas mentais\n- Inteligência artificial personalizada para melhorar sua produtividade\n- Aprendizado mais eficaz e produtivo com nossa tecnologia\n- Maior compreensão e retenção de conteúdo através de recursos avançados",
            image: mindmaps,
        },

        {
            title: "Sistema de Comunidade Escolar",
            description: "A próxima grande novidade está chegando! Imagine uma plataforma que integra comunidades escolares, suas classes e matérias em um só lugar. Com nosso sistema de comunidade, você terá:\n\n**Principais Vantagens:**\n- Integração perfeita entre todas as classes e matérias\n- Voz sobre IP (VoIP) e chat dedicados para discussões interativas\n- Sistema de atividades que unifica o ensino e a colaboração entre estudantes\n- Uma maneira revolucionária de aprender e colaborar",
            image: community,
        }




    ];

    const [selectedItem, setSelectedItem] = useState<NavbarItemProps | null>(null);

    const handleItemClick = (item: NavbarItemProps) => {
        setSelectedItem(item);
    };

    return (
        <div className="flex flex-col items-center bg-gray-900 text-white sm:m-0 mx-2 text-sm sm:text-base">
            <h1 className='text-4xl font-bold my-4'>Funcionalidades Futuras</h1>
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
                        <div className="w-screen max-w-[1200px] flex-col sm:flex-row-reverse p-6 bg-gray-800/50 rounded-lg flex content-around justify-around gap-2 ">
                            <div className="w-2/3">
                                <motion.div className="w-8/12/" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
                                    <section>
                                        <ReactMarkdown className='text-justify conteudo'>
                                            {selectedItem.description}
                                        </ReactMarkdown>
                                    </section>
                                </motion.div>
                            </div>
                            <div className="w-1/3">
                                <Image
                                className='rounded-md'
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

export default FuncionalidadesFuturas;
