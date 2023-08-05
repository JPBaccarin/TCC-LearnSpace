'use client'

import { useState } from 'react';
import Head from 'next/head';
import TutorialModal from '@/components/modal/TutorialModal';

const Corretor = () => {
    // Estado para controlar se o modal de tutorial está aberto
    const [showTutorialModal, setShowTutorialModal] = useState(true);

    // Passos do tutorial
    const tutorialSteps = [
        {
            title: 'Passo 1',
            description: 'Digite o texto que deseja corrigir na caixa acima.',
            imageSrc: '/step1.png',
        },
        {
            title: 'Passo 2',
            description: 'Clique no botão "Corrigir" para obter o texto corrigido.',
            imageSrc: '/step2.png',
        },
        {
            title: 'Passo 3',
            description: 'O texto corrigido aparecerá na caixa abaixo.',
            imageSrc: '/step3.png',
        },
    ];

    const handleCorrection = () => {
        // Lógica para chamar a API do ChatGPT e atualizar o estado 'correctedText'
    };

    const closeModal = () => {
        setShowTutorialModal(false);
    };

    return (
        <div className="container mx-auto p-4 bg-gray-800 rounded-md border border-white/20 ">
            <Head>
                <title>Corretor de Textos - ENEM</title>
                <meta name="description" content="Corretor de textos para o ENEM." />
            </Head>
            <h1 className="text-2xl font-bold mb-4 text-white">Corretor de Textos - ENEM</h1>
            <div className="mb-4">
                <label htmlFor="inputText" className=" block mb-2 text-white">
                    Insira o texto para correção:
                </label>
                <textarea
                    id="inputText"
                    className="w-full h-40 p-2 bg-gray-700 border outline-none focus-visible:ring-1 focus:ring-blue-500 transition-all border-gray-500 rounded text-white"
                    value={'' /* Coloque o valor do estado inputText aqui */}

                ></textarea>
            </div>
            <button
                className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600 outline-none focus-visible:ring-1 focus:ring-blue-500 transition-all"
                onClick={handleCorrection}
            >
                Corrigir
            </button>
            <div className="mt-4">
                <label htmlFor="correctedText" className="block mb-2 text-white">
                    Texto corrigido:
                </label>
                <textarea
                    id="correctedText"
                    className="w-full h-40 p-2 bg-gray-700 border outline-none focus-visible:ring-1 focus:ring-blue-500 transition-all border-gray-500 rounded text-white"
                    value={'' /* Coloque o valor do estado correctedText aqui */}
                    readOnly
                ></textarea>
            </div>

            {/* Modal de Tutorial */}
            <TutorialModal isOpen={showTutorialModal} steps={tutorialSteps} onClose={closeModal} />
        </div>
    );
};

export default Corretor;
