import React from 'react';
import { FaDumbbell, FaChartLine, FaBullseye } from 'react-icons/fa';

interface WeeklyGoalCardProps {
  completedExercises: number;
  weeklyGoal: number;
  accuracyRate: number;
}

const WeeklyGoalCard: React.FC<WeeklyGoalCardProps> = ({ completedExercises, weeklyGoal, accuracyRate }) => {
  const progress = (completedExercises / weeklyGoal) * 100;
  const accuracyProgress = accuracyRate;

  return (
    <div className="bg-white p-6 md:rounded-3xl rounded-lg shadow-lg dark:bg-gray-700 w-full h-full">
      <div className="flex flex-col">
        <div className="flex items-center justify-between mb-4">
          <div className="flex items-center">
            <span className="mr-2 text-red-500 dark:text-red-500">
              <FaBullseye />
            </span>
            <h2 className="text-lg font-bold text-gray-900 dark:text-white">Meta Semanal</h2>
          </div>
          <button className="text-gray-300 hover:text-white focus:text-white font-bold py-2 px-4 rounded-md transition duration-300 transform-gpu hover:scale-105 focus:scale-105">
            Alterar
          </button>
        </div>
        <div className="mb-4">
          <div className="flex items-center justify-between md:px-2 mb-1">
            <div className="flex items-center">
              <span className="mr-2 text-gray-900 dark:text-white">
                <FaDumbbell />
              </span>
              <div className="text-gray-900 dark:text-white">Exercícios Concluídos</div>
            </div>
            <div className="text-gray-900 dark:text-white">
              {completedExercises}/{weeklyGoal}
            </div>
          </div>
          <div className="w-full h-4 bg-red-200 rounded-full overflow-hidden">
            <div className="h-4 bg-red-500" style={{ width: `${progress}%`, textAlign: 'center' }}></div>
          </div>
        </div>
        <div className="">
          <div className="flex items-center justify-between md:px-2 mb-1">
            <div className="flex items-center">
              <span className="mr-2 text-gray-900 dark:text-white">
                <FaChartLine />
              </span>
              <div className="text-gray-900 dark:text-white">Taxa de Acertos</div>
            </div>
            <div className="text-gray-900 dark:text-white">
              {accuracyRate}%
            </div>
          </div>
          <div className="w-full h-4 bg-blue-200 rounded-full overflow-hidden">
            <div className="h-4 bg-blue-500" style={{ width: `${accuracyProgress}%`, textAlign: 'center' }}></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default WeeklyGoalCard;
