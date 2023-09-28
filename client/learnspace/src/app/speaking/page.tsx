import Controller from '@/components/speaking/Controller';
import React from 'react';
import { FaUserCircle } from 'react-icons/fa';
import { FiHeadphones } from 'react-icons/fi';

const SpeakingAndListeningPage: React.FC = () => {
    const iaName: string = 'IA';

    return (
        <div className="w-screen h-screen bg-gray-900 bgsvg text-white p-5 flex flex-col bgsvg">
            <div className='bg-gray-800 p-5 h-full rounded-lg'>
                <div className="flex items-center mb-4">
                <Controller />
                </div>
            </div>
        </div>
    );
};

export default SpeakingAndListeningPage;
