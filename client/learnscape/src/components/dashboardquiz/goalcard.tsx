import React from 'react';

interface WeeklyGoalCardProps{
    completedExercises: number;
    weeklyGoal: number;
}

const WeeklyGoalCard: React.FC<WeeklyGoalCardProps> = ({ completedExercises, weeklyGoal }) => {
    const progress = (completedExercises / weeklyGoal) * 100;

    return (
        <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700 mb-6  w-full sm:w-fit">
            <div className="flex items-center justify-end mb-4">
                <div className="w-full h-4 bg-red-200 rounded-full overflow-hidden">
                    <div className="h-4 bg-red-500" style={{ width: `${progress}%` }} />
                </div>
            </div>
            <p className="text-lg font-bold text-gray-900 dark:text-white mb-2">Meta Semanal</p>
            <div className="flex text-base justify-between gap-4">
                <p className=" text-gray-900 dark:text-white">Exercícios Concluídos</p>
                <p className=" text-gray-900 dark:text-white font-bold">{completedExercises}/{weeklyGoal}</p>
            </div>
        </div>
    );
};

export default WeeklyGoalCard;
