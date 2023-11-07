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
        question: 'Qual é a parte do corpo humano responsável por bombear o sangue?',
        options: ['Cérebro', 'Estômago', 'Coração', 'Fígado'],
        correctAnswer: 'Coração',
        selectedOption: '',
    },
    {
        id: 2,
        question: 'Qual é o planeta mais próximo do Sol em nosso sistema solar?',
        options: ['Terra', 'Marte', 'Vênus', 'Júpiter'],
        correctAnswer: 'Vênus',
        selectedOption: '',
    },
    {
        id: 3,
        question: 'Qual é a cor do sangue humano quando é rico em oxigênio?',
        options: ['Vermelho', 'Azul', 'Verde', 'Amarelo'],
        correctAnswer: 'Vermelho',
        selectedOption: '',
    },
    {
        id: 4,
        question: 'Qual é o processo pelo qual a água evapora e forma nuvens?',
        options: ['Fotossíntese', 'Condensação', 'Evaporação', 'Precipitação'],
        correctAnswer: 'Evaporação',
        selectedOption: '',
    },
    {
        id: 5,
        question: 'Qual é a maior lua de Júpiter?',
        options: ['Io', 'Europa', 'Ganimedes', 'Calisto'],
        correctAnswer: 'Ganimedes',
        selectedOption: '',
    },
    {
        id: 6,
        question: 'Qual é a unidade de medida de tempo no sistema internacional?',
        options: ['Metro', 'Segundo', 'Quilograma', 'Litro'],
        correctAnswer: 'Segundo',
        selectedOption: '',
    },
    {
        id: 7,
        question: 'Qual é o processo de transformação de um líquido em gás?',
        options: ['Fusão', 'Solidificação', 'Evaporação', 'Derretimento'],
        correctAnswer: 'Evaporação',
        selectedOption: '',
    },
    {
        id: 8,
        question: 'Qual é o maior órgão do corpo humano?',
        options: ['Coração', 'Fígado', 'Pulmões', 'Pele'],
        correctAnswer: 'Pele',
        selectedOption: '',
    },
    {
        id: 9,
        question: 'Qual é o gás que as plantas absorvem da atmosfera para fazer fotossíntese?',
        options: ['Oxigênio', 'Nitrogênio', 'Dióxido de carbono', 'Hidrogênio'],
        correctAnswer: 'Dióxido de carbono',
        selectedOption: '',
    },
    {
        id: 10,
        question: 'Qual é o processo de transformação de um sólido em líquido?',
        options: ['Fusão', 'Solidificação', 'Evaporação', 'Derretimento'],
        correctAnswer: 'Fusão',
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
                            Quiz de Ciências
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
