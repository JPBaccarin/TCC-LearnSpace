import dynamic from 'next/dynamic';

const DynamicCorretorComponent = dynamic(
    () => import('@/components/corretor/CorrectorComponent'),
    { ssr: false }
);

const Corretor = () => {
    return (
        <div className="min-h-screen flex flex-col items-center justify-center sm:p-8 p-2 bg-red-300 bgsvg dark:bg-gray-900 accent-red-600 dark:text-white" >
            <DynamicCorretorComponent />
            <div>
                <div className=" mt-4 border border-blue-500/20 rounded-lg flex items-center justify-center">
                    <div className="px-8 text-justify py-4  shadow-lg rounded-lg">
                        <h1 className="text-3xl font-bold mb-4 text-center">Dicas para uma Redação Nota Mil no Enem</h1>
                        <ol className="list-decimal pl-6">
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Entenda profundamente o tema:</p>
                                <p className="ml-4">
                                    Ao receber o tema da redação, a primeira atitude é compreender a proposta com atenção e profundidade. Analise as palavras-chave e desvende os possíveis sentidos e desdobramentos do tema. Isso permitirá que você elabore uma abordagem precisa e coerente, garantindo uma base sólida para o desenvolvimento do texto.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Planeje com um rascunho estratégico:</p>
                                <p className="ml-4">
                                    Antes de começar a escrever a versão final da redação, faça um rascunho bem estruturado. Organize suas ideias, argumentos e exemplos de forma clara e lógica. Defina a introdução, o desenvolvimento dos parágrafos e a conclusão. Esse planejamento prévio vai evitar repetições e desvios do tema, conferindo mais fluidez ao seu texto.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Construa uma introdução cativante:</p>
                                <p className="ml-4">
                                    A introdução é o cartão de visitas da sua redação. Crie uma abertura impactante, que desperte o interesse do avaliador e o motive a continuar lendo. Apresente o tema e sua tese (opinião) de forma clara e objetiva. Utilize argumentos pertinentes e originais para atrair a atenção do leitor.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Desenvolva argumentos sólidos e bem fundamentados:</p>
                                <p className="ml-4">
                                    No desenvolvimento da redação, apresente seus argumentos com clareza e embasamento. Utilize dados, estatísticas e exemplos concretos para fundamentar suas ideias. Evite generalizações e preconceitos. Demonstre domínio sobre o assunto abordado e conecte os argumentos de forma lógica e coerente.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Domine a arte da coesão e coerência:</p>
                                <p className="ml-4">
                                    A coesão e coerência são elementos essenciais para uma redação bem escrita. Utilize conectivos adequados para criar uma sequência lógica entre os parágrafos e frases. Verifique se as ideias fluem de forma natural e se há uma clara conexão entre os argumentos apresentados.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Cuide da gramática e ortografia:</p>
                                <p className="ml-4">
                                    Erros gramaticais e de ortografia podem comprometer a compreensão e a avaliação da sua redação. Revise seu texto cuidadosamente, identificando possíveis falhas. Utilize a norma culta da língua portuguesa e evite gírias e coloquialismos.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Seja imparcial e respeite os direitos humanos:</p>
                                <p className="ml-4">
                                    Na redação do Enem, é fundamental ser imparcial e respeitar os direitos humanos. Evite qualquer forma de discriminação ou preconceito em seu texto. Defenda seu ponto de vista com argumentos sólidos, sem desrespeitar a diversidade de opiniões.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Conclusão com proposta de intervenção:</p>
                                <p className="ml-4">
                                    Na conclusão, retome sua tese e os principais argumentos apresentados. Demonstre seu posicionamento de forma enfática e propositiva. Se o tema permitir, apresente uma proposta de intervenção para o problema abordado. Essa ação mostra que você está preocupado em encontrar soluções concretas para questões sociais e ambientais.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Pratique regularmente:</p>
                                <p className="ml-4">
                                    A prática é a chave para aprimorar suas habilidades de redação. Escreva sobre temas variados, respeitando o tempo de elaboração estabelecido pelo Enem. Peça feedbacks de colegas e professores para identificar pontos de melhoria.
                                </p>
                            </li>
                            <li className="mb-4">
                                <p className="font-semibold text-lg mt-2">Mantenha-se informado e atualizado:</p>
                                <p className="ml-4">
                                    Estar bem informado sobre acontecimentos atuais é essencial para enriquecer sua redação com exemplos e dados relevantes. Leia jornais, revistas, artigos e acompanhe debates sobre temas importantes para a sociedade.
                                </p>
                            </li>
                        </ol>
                    </div>
                </div>

            </div>
        </div>
    );
};

export default Corretor;
