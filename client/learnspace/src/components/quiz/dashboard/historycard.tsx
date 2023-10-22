import React from 'react';
import { FaHistory } from 'react-icons/fa';

interface LevelCardProps {
    currentLevel: number;
    previousLevel: number;
    score: number;
    topic: string;
    difficulty: string;
    date: string;
}

const HistoryCard: React.FC<LevelCardProps> = ({ currentLevel, previousLevel, score, topic, difficulty, date }) => {
    const currentLevelProgress = (currentLevel / 50) * 100;
    const previousLevelProgress = (previousLevel / 50) * 100;

    return (
        <div className="bg-blue-900 p-6 rounded-md shadow-lg  dark:bg-gray-700 mb-6 w-full h-full dark:text-white md:rounded-3xl">
            <div className='flex items-center mb-2'>
                <span className="mr-2 text-red-500 dark:text-red-500">
                    <FaHistory />
                </span>
                <p className="text-lg font-bold text-white ">Histórico</p>
            </div>

            <div className="flex items-center justify-start mb-4 gap-8">
                <div className='w-full flex flex-col gap-1'>
                    <div className='flex flex-row justify-between'>
                        <p className="text-base text-white">Nível Atual:</p>
                        <p>2/3</p>
                    </div>
                    <div className="w-full h-4 bg-red-200 rounded-full overflow-hidden">
                        <div className="h-4 bg-red-500" style={{ width: `${currentLevelProgress}%` }} />
                    </div>
                </div>
                <div className='w-full flex flex-col gap-1'>
                    <div className='flex flex-row justify-between'>
                        <p className="text-base text-white">Nível Anterior:</p>
                        <p>2/3</p>
                    </div>
                    <div className="w-full h-4 bg-red-200 rounded-full overflow-hidden">
                        <div className="h-4 bg-red-500" style={{ width: `${previousLevelProgress}%` }} />
                    </div>
                </div>
            </div>
            <div className="flex justify-between items-center flex-col">
                <p className='font-bold my-1'>quiz anterior</p>
                <div className="flex items-center gap-4 sm:flex-row flex-col">
                    <p className="text-base text-white">Pontuação: {score}</p>
                    <p className="text-base text-white">Tópico: {topic}</p>
                    <p className="text-base text-white">Dificuldade: {difficulty}</p>
                    <p className="text-base text-white">Data: {date}</p>
                </div>
            </div>
        </div>
    );
};

export default HistoryCard;
