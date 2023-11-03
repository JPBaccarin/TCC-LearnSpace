import { motion } from 'framer-motion';
import Image from 'next/image';
import ReactMarkdown from 'react-markdown';
import '@/components/index/landingpage.css'; // Certifique-se de usar o mesmo estilo CSS

const ResolucaoDoSite: React.FC = () => {
    const description = "\nImagine um lugar onde o conhecimento flui como nunca antes, onde você pode acessar conteúdo de qualidade de forma simples e se conectar com a inteligência artificial para aprimorar seu aprendizado. Bem-vindo ao nosso site, onde estamos transformando a educação.\n\n**Unificação de Conteúdos de Qualidade**\nReunimos uma vasta gama de matérias e conhecimentos em um só lugar, proporcionando acesso instantâneo a conteúdo de alta qualidade.\n\n**Integração Moderna com IA**\nNossa plataforma oferece uma integração perfeita com a inteligência artificial, personalizando sua jornada de aprendizado e maximizando sua produtividade.\n\n**Principais Vantagens**\n- Acesso descomplicado a uma riqueza de informações\n- Aprendizado sob medida com IA para impulsionar seu potencial\n- Uma experiência educacional mais simples e eficaz\n\nNosso compromisso é revolucionar a maneira como você aprende. Tornamos o conhecimento acessível a todos, simplificando o processo e oferecendo uma jornada de aprendizado única. Combinamos a profundidade do conteúdo com a facilidade de uso, proporcionando uma experiência de aprendizado incomparável.\n\nJunte-se a nós e descubra como a educação pode ser transformada."




    return (
        <div className="flex flex-col items-center bg-gray-900 text-white sm:m-0 mx-2 text-sm sm:text-base">
            <div className="mt-4">
                <motion.div
                    className={`w-screen max-w-[1200px] p-6 bg-gray-800/50 rounded-lg flex content-around justify-around gap-2 flex-col`}
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ duration: 0.5 }}
                >
                    <h1 className='text-4xl font-bold my-4 text-center'>Transformando a Educação</h1>

                    <div className="px-10">
                        <div className="">
                            <section>
                                <ReactMarkdown className='text-justify conteudo'>
                                    {description}
                                </ReactMarkdown>
                            </section>
                        </div>
                    </div>

                </motion.div>
            </div>
        </div>
    );
};

export default ResolucaoDoSite;
