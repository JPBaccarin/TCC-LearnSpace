import React from 'react';

interface LastQuizCardProps {
  score: number;
  topic: string;
  date: string;
}

const LastQuizCard: React.FC<LastQuizCardProps> = ({ score, topic, date }) => {
  return (
    <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700">
      <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-4">Último Quiz</h2>
      <div className="mb-4">
        <p className="text-sm text-gray-900 dark:text-white">Pontuação:</p>
        <p className="text-xl font-bold text-gray-900 dark:text-white">{score}</p>
      </div>
      <div className="mb-4">
        <p className="text-sm text-gray-900 dark:text-white">Tópico:</p>
        <p className="text-lg text-gray-900 dark:text-white">{topic}</p>
      </div>
      <div>
        <p className="text-sm text-gray-900 dark:text-white">Data:</p>
        <p className="text-lg text-gray-900 dark:text-white">{date}</p>
      </div>
    </div>
  );
};

export default LastQuizCard;
