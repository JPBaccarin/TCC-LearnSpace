import React from 'react';
import { FiAward, FiTrendingUp } from 'react-icons/fi';

const RecordsCard: React.FC = () => {
  const maxScore: number = 1850;
  const maxSeries: number = 12;
  const averageScore: number = 1450;
  const growthRate: string = ((maxScore - averageScore) / maxScore * 100).toFixed(2);

  return (
    <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700 mb-6  w-full sm:w-fit">
      <div className="flex justify-between items-center mb-2">
        <div className="flex items-center">
          <FiAward size={20} className="text-red-500 mr-2" />
          <h2 className="text-xl font-bold text-gray-900 dark:text-white">Recordes</h2>
        </div>
      </div>
      <div className="my-4">
        <div className="flex justify-between mb-4">
          <div>
            <p className="text-sm text-gray-900 dark:text-white">Pontuação Máxima</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">{maxScore}</p>
          </div>
          <div>
            <p className="text-sm text-gray-900 dark:text-white">Série Máxima</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">{maxSeries}</p>
          </div>
        </div>
        <div className="flex justify-between mb-4 gap-8">
          <div>
            <p className="text-sm text-gray-900 dark:text-white">Pontuação Média</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">{averageScore}</p>
          </div>
          <div>
            <p className="text-sm text-gray-900 dark:text-white">Taxa de Crescimento</p>
            <div className="flex items-center">
              <FiTrendingUp size={20} className="text-green-500 mr-2" />
              <p className="text-xl font-bold text-gray-900 dark:text-white">{growthRate}%</p>
            </div>
          </div>
        </div>
      </div>
      <p className="text-xs text-gray-500 dark:text-gray-400">Última Atualização: 14/07/2023</p>
    </div>
  );
};

export default RecordsCard;
