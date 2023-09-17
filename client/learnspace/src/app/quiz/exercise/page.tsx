'use client'
import React, { useState, useEffect } from 'react';
import ExerciseOptions from '@/components/quiz/quizexercise/exoptions';
import ExerciseQuestion from '@/components/quiz/quizexercise/exquestions';
import ExerciseResult from '@/components/quiz/quizexercise/exresult';

interface Exercise {
    id:number;
    question: string;
    options: string[];
    correctAnswer: string;
    selectedOption: string;
}

const ExercisePage: React.FC = () => {
    const [currentExercise, setCurrentExercise] = useState<number>(0);
    const [exercises, setExercises] = useState<Exercise[]>([]);
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

    useEffect(() => {
        // Substitua esta chamada por uma função que faz a solicitação à sua API para obter as perguntas do novo quiz
        const fetchQuizQuestions = async () => {
            try {
                const response = await fetch('/api/create-quiz', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({ exerciseType: 'algebra', exerciseDifficulty: 'facil', exerciseQuestionCount: 3 }),
                });

                if (response.ok) {
                    const newQuiz: Exercise[] = await response.json();
                    setExercises(newQuiz);
                } else {
                    console.error('Erro ao criar novo quiz.');
                }
            } catch (error) {
                console.error('Erro ao criar novo quiz:', error);
            }
        };

        fetchQuizQuestions(); // Chame a função para obter as perguntas do novo quiz
    }, []);

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
