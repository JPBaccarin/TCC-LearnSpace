'use client'

import { useState } from 'react';
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


    const closeModal = () => {
        setShowTutorialModal(false);
    };

    return (
        <div className="container mx-auto p-4 bg-gray-800 rounded-md shadow-2xl ">
            
            <TutorialModal isOpen={showTutorialModal} steps={tutorialSteps} onClose={closeModal} />
        </div>
    );
};

export default Corretor;
