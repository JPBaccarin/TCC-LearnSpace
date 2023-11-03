import React from 'react';
import { CircularProgressbar, CircularProgressbarWithChildren, buildStyles } from 'react-circular-progressbar';
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
        <div className="flex flex-col md:flex-row gap-4 m-2 text-center">
          <div className="w-full md:w-1/2">
            <CircularProgressbarWithChildren
              value={progress}
              circleRatio={0.75}
              styles={buildStyles({
                pathColor: "#ef4444",
                rotation: 1 / 2 + 1 / 8,
                trailColor: "#fecaca",
                strokeLinecap: "round",
                pathTransitionDuration: 1,
              })}
              strokeWidth={8.5}
            >
              <p className="sm:text-xl text-2xl  text-gray-900 dark:text-white font-bold mb-1">
                {completedExercises}/{weeklyGoal}
              </p>
              <p className="text-md  text-gray-900 dark:text-white">
                Exercícios<br />Concluídos
              </p>
            </CircularProgressbarWithChildren>
          </div>
          <div className="w-full md:w-1/2">
            <CircularProgressbarWithChildren
              value={accuracyRate}
              circleRatio={0.75}
              styles={buildStyles({
                pathColor: "#3b82f6",
                rotation: 1 / 2 + 1 / 8,
                trailColor: "#bfdbfe",
                strokeLinecap: "round",
                pathTransitionDuration: 1,
              })}
              strokeWidth={8.5}
            >
              <p className="sm:text-xl text-2xl text-gray-900 dark:text-white font-bold mb-4">
                {accuracyRate}
              </p>
              <p className="text-md  text-gray-900 dark:text-white">
                Taxa de Acertos
              </p>
            </CircularProgressbarWithChildren>
          </div>
        </div>
      </div>
    </div>
  );
};

export default WeeklyGoalCard;
