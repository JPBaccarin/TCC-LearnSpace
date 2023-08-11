import React from 'react';
import { FaUserCircle } from 'react-icons/fa';
import { FiHeadphones } from 'react-icons/fi';

const SpeakingAndListeningPage: React.FC = () => {
    const iaName: string = 'IA';

    return (
        <div className="w-screen h-screen bg-gray-900 bgsvg text-white p-5 flex flex-col bgsvg">
            <div className="flex items-center mb-4">
                <FiHeadphones size={24} className="mr-2" />
                <h2 className="text-3xl font-semibold">Speaking and Listening</h2>
            </div>

            {/* IA Avatar */}
            <div className="flex items-center mb-4 flex-col">
                <div className="bg-blue-600 rounded-full w-40 h-40 flex items-center justify-center">
                    <FaUserCircle size={56} className="text-white" />
                </div>
                <p className="text-xl">{iaName}</p>
            </div>

            {/* Resposta da IA */}
            <div className="bg-gray-200 bg-opacity-20 border border-white border-opacity-50 rounded p-4 mb-4">
                <p>Resposta da {iaName}</p>
            </div>

            {/* Botão de detecção de áudio */}
            <button className="bg-green-600 hover:bg-green-700 text-white rounded px-4 py-2 mb-4">
                Detectar Microfone
            </button>

            {/* Transcrição da fala do usuário */}
            <div className="bg-gray-200 bg-opacity-20 border border-white border-opacity-50 rounded p-4">
                <p>Transcrição da sua fala</p>
            </div>
        </div>
    );
};

export default SpeakingAndListeningPage;
