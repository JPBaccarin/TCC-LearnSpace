'use client'
import React, { useState } from 'react';
import ExerciseOptions from '@/components/quiz/quizexercise/exoptions';
import ExerciseQuestion from '@/components/quiz/quizexercise/exquestions';
import ExerciseResult from '@/components/quiz/quizexercise/exresult';

interface Exercise {
    id: number;
    question: string;
    options: string[];
    correctAnswer: string;
    selectedOption: string;
}

const questions: Exercise[] = [
    {
        id: 1,
        question: 'Qual é a capital do Brasil?',
        options: ['Rio de Janeiro', 'Brasília', 'São Paulo', 'Salvador'],
        correctAnswer: 'Brasília',
        selectedOption: '',
    },
    {
        id: 2,
        question: 'Quanto é 2 + 2?',
        options: ['3', '4', '5', '6'],
        correctAnswer: '4',
        selectedOption: '',
    },
    {
        id: 3,
        question: 'Qual é o maior planeta do nosso sistema solar?',
        options: ['Terra', 'Júpiter', 'Marte', 'Vênus'],
        correctAnswer: 'Júpiter',
        selectedOption: '',
    },
];

const ExercisePage: React.FC = () => {
    const [currentExercise, setCurrentExercise] = useState<number>(0);
    const [exercises, setExercises] = useState<Exercise[]>(questions);
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
