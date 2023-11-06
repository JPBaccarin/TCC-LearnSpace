'use client'
import React, { useState, useEffect, useRef } from 'react';
import { motion } from 'framer-motion';
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
        question: 'Quanto é 2 + 2?',
        options: ['3', '4', '5', '6'],
        correctAnswer: '4',
        selectedOption: '',
    },
    {
        id: 2,
        question: 'Quanto é 5 - 3?',
        options: ['2', '4', '6', '8'],
        correctAnswer: '2',
        selectedOption: '',
    },
    {
        id: 3,
        question: 'Quanto é 3 x 4?',
        options: ['6', '9', '12', '15'],
        correctAnswer: '12',
        selectedOption: '',
    },
    {
        id: 4,
        question: 'Quanto é 10 ÷ 2?',
        options: ['3', '5', '8', '10'],
        correctAnswer: '5',
        selectedOption: '',
    },
    {
        id: 5,
        question: 'Quanto é o dobro de 7?',
        options: ['5', '10', '14', '7'],
        correctAnswer: '14',
        selectedOption: '',
    },
    {
        id: 6,
        question: 'Quanto é 8 + 6?',
        options: ['12', '14', '16', '18'],
        correctAnswer: '14',
        selectedOption: '',
    },
    {
        id: 7,
        question: 'Quanto é 15 - 9?',
        options: ['4', '6', '7', '8'],
        correctAnswer: '6',
        selectedOption: '',
    },
    {
        id: 8,
        question: 'Quanto é 5 x 7?',
        options: ['25', '30', '35', '40'],
        correctAnswer: '35',
        selectedOption: '',
    },
    {
        id: 9,
        question: 'Quanto é 18 ÷ 3?',
        options: ['4', '6', '8', '9'],
        correctAnswer: '6',
        selectedOption: '',
    },
    {
        id: 10,
        question: 'Quanto é o triplo de 5?',
        options: ['10', '12', '15', '18'],
        correctAnswer: '15',
        selectedOption: '',
    },
];


const ExercisePage: React.FC = () => {
    const [currentExercise, setCurrentExercise] = useState<number>(0);
    const [exercises, setExercises] = useState<Exercise[]>(questions);
    const [correctCount, setCorrectCount] = useState<number>(0);
    const [wrongCount, setWrongCount] = useState<number>(0);
    const [quizCompleted, setQuizCompleted] = useState<boolean>(false);
    const buttonRef = useRef<HTMLButtonElement | null>(null);

    useEffect(() => {
        if (buttonRef.current) {
            buttonRef.current.focus();
        }
    }, []);

    const handleNextExercise = () => {
        const currentExerciseObj = exercises[currentExercise];
        if (currentExerciseObj.selectedOption === currentExerciseObj.correctAnswer) {
            setCorrectCount(correctCount + 1);
        } else {
            setWrongCount(wrongCount + 1);
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
        <div className="min-h-screen flex items-center justify-center bg-red-300 dark:bg-gray-900 heropattern-wiggle-white/10">
            <motion.div className="max-w-lg w-full mx-auto my-0 md:my-4 p-8 bg-white dark:bg-gray-800 rounded-lg shadow-2xl"
                initial={{ scale: 0 }}
                animate={{ scale: 1 }}
                transition={{ type: "spring", stiffness: 250, damping: 20 }}>
                {!quizCompleted ? (
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                    >
                        <h1 className="text-3xl font-extrabold text-center text-gray-900 dark:text-white mb-4">
                            Quiz de Matemática
                        </h1>
                        <motion.div
                            initial={{ scale: 0.8 }}
                            animate={{ scale: 1 }}
                            transition={{ type: "spring", stiffness: 260, damping: 20 }}>
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
                                <motion.button
                                    onClick={handleNextExercise}
                                    whileHover={{ scale: 1.05 }}
                                    whileFocus={{ scale: 1.05 }}
                                    onKeyPress={(e) => {
                                        if (e.key === 'Enter') {
                                            handleNextExercise();
                                        }
                                    }}
                                    ref={buttonRef}
                                    tabIndex={0}
                                    className="block w-full bg-red-500 hover:bg-red-600 focus:bg-red-600 text-white font-bold py-2 px-4 rounded-md transition duration-300 transform-gpu mt-4"
                                >
                                    Próxima Questão
                                </motion.button>
                            )}
                        </motion.div>
                    </motion.div>
                ) : (
                    <motion.div
                        initial={{ scale: 0 }}
                        animate={{ scale: 1 }}
                        transition={{ type: "spring", stiffness: 250, damping: 20 }}>
                        <ExerciseResult
                            correctCount={correctCount}
                            wrongCount={wrongCount}
                            totalQuestions={exercises.length}
                            exercises={exercises}
                        />
                    </motion.div>
                )}


            </motion.div>
        </div>
    );
};

export default ExercisePage;
