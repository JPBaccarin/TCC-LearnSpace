'use client'

import ExerciseSelectionCard from '@/components/quiz/dashboard/exselectcard';
import WeeklyGoalCard from '@/components/quiz/dashboard/goalcard';
import LastQuizCard from '@/components/quiz/dashboard/lastquizcard';
import LevelCard from '@/components/quiz/dashboard/levelcard';
import RecordsCard from '@/components/quiz/dashboard/recordcard';
import React, { useState } from 'react';
import { motion } from 'framer-motion';
import HistoryCard from '@/components/quiz/dashboard/historycard';



const DashboardPage = () => {
    const [completedExercises, setCompletedExercises] = useState<number>(25);
    const [currentLevel, setCurrentLevel] = useState<number>(5);
    const [weeklyGoal, setWeeklyGoal] = useState<number>(30);
    const [exerciseType, setExerciseType] = useState<string>('');
    const [exerciseDifficulty, setExerciseDifficulty] = useState<string>('');
    const previousLevel = 4;
    const score = 1200;
    const topic = 'Matemática';
    const difficulty = 'Médio';
    const date = '2023-10-22';

    const handleExerciseSelection = (field: string, value: string | number) => {
        if (field === 'exerciseType') {
            setExerciseType(value as string);
        } else if (field === 'exerciseDifficulty') {
            setExerciseDifficulty(value as string);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-red-300 dark:bg-gray-900 p-4 heropattern-wiggle-white/10">
            <motion.div
                className="max-w-full w-11/12 md:w-2/3 mx-auto p-2 sm:p-8 bg-stone-100 dark:bg-gray-700/20 rounded-3xl shadow-2xl gap-4 backdrop-blur-sm"
                initial={{ opacity: 0, scale: 0.8, y: -20 }}
                animate={{ opacity: 1, scale: 1, y: 0 }}
            >
                <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-4">
                    <motion.div
                        className="w-full"
                        initial={{ opacity: 0, scale: 0.8, y: -20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        transition={{ type: 'spring', stiffness: 100, damping: 10, delay: 0.05 }}
                    >
                        <WeeklyGoalCard completedExercises={completedExercises} weeklyGoal={weeklyGoal} />
                    </motion.div>
                    <motion.div
                        className="w-full"
                        initial={{ opacity: 0, scale: 0.8, y: -20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        transition={{ type: 'spring', stiffness: 100, damping: 10, delay: 0.1 }}
                    >
                        <HistoryCard
                            currentLevel={currentLevel}
                            previousLevel={previousLevel}
                            score={score}
                            topic={topic}
                            difficulty={difficulty}
                            date={date}
                        />
                    </motion.div>
                    <motion.div
                        className="w-full"
                        initial={{ opacity: 0, scale: 0.8, y: -20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        transition={{ type: 'spring', stiffness: 100, damping: 10, delay: 0.15 }}
                    >
                        <RecordsCard />
                    </motion.div>
                    <motion.div
                        className="w-full"
                        initial={{ opacity: 0, scale: 0.8, y: -20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        transition={{ type: 'spring', stiffness: 100, damping: 10, delay: 0.2 }}
                    >
                        <ExerciseSelectionCard
                            exerciseType={exerciseType}
                            exerciseDifficulty={exerciseDifficulty}
                            handleExerciseSelection={handleExerciseSelection}
                        />
                    </motion.div>
                </div>
            </motion.div>
        </div>
    );
};

export default DashboardPage;
