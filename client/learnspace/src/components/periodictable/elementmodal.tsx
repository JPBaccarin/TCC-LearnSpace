'use client'
import Image from 'next/image';
import React from 'react';
interface Element {
    name: string;
    symbol: string;
    number: number;
    atomic_mass: number;
    summary: string;
    image: {
        url: string;
        title: string;
    };
    electron_configuration: string;
    electron_configuration_semantic: string;
    electron_affinity: number | null; // Aceita nulo
    ionization_energies: number[] | null; // Aceita nulo
    electronegativity_pauling: number | null; // Aceita nulo
}

interface ElementModalProps {
    element: Element | null;
    onClose: () => void;
}

const ElementModal: React.FC<ElementModalProps> = ({ element, onClose }) => {
    if (!element) {
        return null;
    }

    return (
        <div className="fixed inset-0 flex items-center justify-center z-50">
            <div className="absolute inset-0 bg-gray-900 opacity-70" onClick={onClose}></div>
            <div className="bg-gray-700 shadow-xl w-3/4 md:max-w-lg mx-auto rounded z-50 overflow-y-auto">
                <div className="py-4 text-left px-6 divide-y divide-dotted divide-white/10 max-h-screen overflow-y-auto">
                    <h1 className="text-4xl font-bold mb-2">{element.name}</h1>
                    <div className="flex flex-row justify-between py-2">
                        <h2 className="text-white font-semibold">{element.symbol}</h2>
                        <h2 className="text-white font-semibold">{element.atomic_mass}</h2>
                    </div>
                    <p className="text-sm py-2">{element.summary}</p>
                    <div className="flex flex-col items-center gap-2">
                        <Image className="rounded-md w-2/3 m-3" src={element.image.url} alt={element.image.title} />
                    </div>
                    <div>
                        <h1 className="text-lg font-bold my-2 border-b border-white/5 w-fit">Configuração Eletrônica:</h1>
                        <div className="flex flex-col gap-2 text-sm">
                            <p><strong>Configuração Eletrônica:</strong> {element.electron_configuration}</p>
                            <p><strong>Configuração Eletrônica Semântica:</strong> {element.electron_configuration_semantic}</p>
                            {element.electron_affinity !== null && <p><strong>Afinidade Eletrônica:</strong> {element.electron_affinity}</p>}
                            {element.electronegativity_pauling !== null && <p><strong>Eletronegatividade de Pauling:</strong> {element.electronegativity_pauling}</p>}
                            {element.ionization_energies !== null && element.ionization_energies.length > 0 && <p><strong>Energia de Ionização:</strong> {element.ionization_energies[0]}</p>}
                        </div>
                    </div>
                    {/* Exiba outras informações específicas do elemento aqui, se necessário */}
                    <button
                        className="mt-4 bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded"
                        onClick={onClose}
                    >
                        Fechar
                    </button>
                </div>
            </div>
        </div>
    );
};

export default ElementModal;
