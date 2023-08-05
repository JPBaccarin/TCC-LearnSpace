'use client'

import ExerciseSelectionCard from '@/components/dashboardquiz/exselectcard';
import WeeklyGoalCard from '@/components/dashboardquiz/goalcard';
import LastQuizCard from '@/components/dashboardquiz/lastquizcard';
import LevelCard from '@/components/dashboardquiz/levelcard';
import RecordsCard from '@/components/dashboardquiz/recordcard';
import React, { useState } from 'react';

const DashboardPage = () => {
    const [completedExercises, setCompletedExercises] = useState<number>(25);
    const [currentLevel, setCurrentLevel] = useState<number>(5);
    const [weeklyGoal, setWeeklyGoal] = useState<number>(30);
    const [exerciseType, setExerciseType] = useState<string>('');
    const [exerciseDifficulty, setExerciseDifficulty] = useState<string>('');

    const handleExerciseSelection = (field: string, value: string | number) => {
        if (field === 'exerciseType') {
            setExerciseType(value as string);
        } else if (field === 'exerciseDifficulty') {
            setExerciseDifficulty(value as string);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-red-300 dark:bg-gray-900 p-4">
            <div className=" max-w-full mx-auto p-8 bg-stone-100 dark:bg-gray-800 rounded-md shadow-2xl ">
                <div className="flex flex-col gap-4 flex-wrap">
                    <div className='flex flex-row gap-4 w flex-wrap '>

                        <WeeklyGoalCard completedExercises={completedExercises} weeklyGoal={weeklyGoal} />
                        <LevelCard currentLevel={currentLevel} />
                        <RecordsCard />

                    </div>

                    <div className='flex flex-row gap-4 flex-wrap '>

                        <ExerciseSelectionCard
                            exerciseType={exerciseType}
                            exerciseDifficulty={exerciseDifficulty}
                            handleExerciseSelection={handleExerciseSelection}
                        />


                        <LastQuizCard />
                    </div>
                </div>
            </div>
        </div>
    );

};


export default DashboardPage;
