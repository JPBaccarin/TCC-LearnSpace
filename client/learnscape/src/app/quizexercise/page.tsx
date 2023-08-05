'use client'

import React, { useState } from 'react';
import ExerciseOptions from '@/components/quizexercise/exoptions';
import ExerciseQuestion from '@/components/quizexercise/exquestions';
import ExerciseResult from '@/components/quizexercise/exresult';

interface Exercise {
    id: number;
    question: string;
    options: string[];
    correctAnswer: string;
    selectedOption: string | null;
}

const ExercisePage: React.FC = () => {
    const [currentExercise, setCurrentExercise] = useState<number>(0);
    const [exercises, setExercises] = useState<Exercise[]>(() => {
        // Initialize exercises with the selectedOption set to null for each question
        return [
            {
                id: 1,
                question: 'Qual é o resultado da pergunta 1?',
                options: ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
                correctAnswer: 'Resposta 1',
                selectedOption: null,
            },
            {
                id: 2,
                question: 'Qual é o resultado da pergunta 2?',
                options: ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
                correctAnswer: 'Resposta 1',
                selectedOption: null,
            },
            // Add more questions here...
            {
                id: 3,
                question: 'Qual é o resultado da pergunta 3?',
                options: ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
                correctAnswer: 'Resposta 1',
                selectedOption: null,
            },
        ];
    });
    const [correctCount, setCorrectCount] = useState<number>(0);
    const [quizCompleted, setQuizCompleted] = useState<boolean>(false);

    const handleNextExercise = () => {
        const currentExerciseObj = exercises[currentExercise];
        if (currentExerciseObj.selectedOption === currentExerciseObj.correctAnswer) {
            setCorrectCount(correctCount + 1);
        }

        if (currentExercise + 1 < exercises.length) {
            setCurrentExercise(currentExercise + 1);
        } else {
            setQuizCompleted(true);
        }
    };

    const handleOptionChange = (option: string) => {
        setExercises((prevExercises) => {
            const updatedExercises = [...prevExercises];
            updatedExercises[currentExercise].selectedOption = option;
            return updatedExercises;
        });
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-red-300 dark:bg-gray-900">
            <div className="max-w-md w-full mx-auto p-8 bg-white dark:bg-gray-800 rounded-md shadow-2xl">
                {!quizCompleted ? (
                    <>
                        <h1 className="text-3xl font-extrabold text-center text-gray-900 dark:text-white mb-4">
                            Quiz de Matemática
                        </h1>
                        <ExerciseQuestion
                            question={exercises[currentExercise].question}
                            exerciseNumber={currentExercise + 1}
                        />
                        <ExerciseOptions
                            options={exercises[currentExercise].options}
                            selectedOption={exercises[currentExercise].selectedOption}
                            handleOptionChange={handleOptionChange}
                        />
                        {exercises[currentExercise].selectedOption && (
                            <button
                                onClick={handleNextExercise}
                                className="block w-full bg-red-500 hover:bg-red-600 focus:bg-red-600 text-white font-bold py-2 px-4 rounded-md transition duration-300 transform-gpu hover:scale-105 focus:scale-105 mt-4"
                            >
                                Próxima Questão
                            </button>
                        )}
                    </>
                ) : (
                    <ExerciseResult
                        correctCount={correctCount}
                        totalQuestions={exercises.length}
                        exercises={exercises}
                    />
                )}
            </div>
        </div>
    );
};

export default ExercisePage;
