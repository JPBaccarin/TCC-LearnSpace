'use client'
import React, { useState } from 'react';
import ExerciseOptions from '@/components/quiz/quizexercise/exoptions';
import ExerciseQuestion from '@/components/quiz/quizexercise/exquestions';
import ExerciseResult from '@/components/quiz/quizexercise/exresult';
import LastQuizCard from '@/components/quiz/dashboard/lastquizcard';

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
        question: 'Quanto e X + 5 = 10?',
        options: ['5', '6', '2', '-5'],
        correctAnswer: '5',
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
        question: 'a formula de pitagoras e assim: h^2=a^2+b^2 ?',
        options: ['Sim', 'Não',],
        correctAnswer: 'Sim',
        selectedOption: '',
    },
    {
        id: 4,
        question: 'Quanto é  x + x = 10?',
        options: ['6', '3', '2', '5'],
        correctAnswer: '5',
        selectedOption: '',
    },
    {
        id: 5,
        question: 'Quanto e a raiz de 16?',
        options: ['24', '4', '2', '8'],
        correctAnswer: '4',
        selectedOption: '',
    },
    {
        id: 6,
        question: '10 + 10 - 50 = ?',
        options: ['30', '20', '-30', '10'],
        correctAnswer: '-30',
        selectedOption: '',
    },
    {
        id: 7,
        question: 'quanto que é X^2 - 6 = 0 ?',
        options: ['3,3', '3,5', '3,-3', '3'],
        correctAnswer: '3,-3',
        selectedOption: '',
    },
    {
        id: 8,
        question: '20 + 20 é?',
        options: ['40', '60', '-13', '45'],
        correctAnswer: '40',
        selectedOption: '',
    },
    {
        id: 9,
        question: 'Raiz de 144 é quanto?',
        options: ['12', '11', '13', '15'],
        correctAnswer: '12',
        selectedOption: '',
    },
    {
        id: 10,
        question: 'Tenho 1000 ,pago 555 , quanto eu tenho ?',
        options: ['445', '500', '550', '435'],
        correctAnswer: '445',
        selectedOption: '',
    },
];

const ExercisePage: React.FC = () => {
    const [currentExercise, setCurrentExercise] = useState<number>(0);
    const [exercises, setExercises] = useState<Exercise[]>(questions);
    const [correctCount, setCorrectCount] = useState<number>(0);
    const [wrongCount, setWrongCount] = useState<number>(0);
    const [quizCompleted, setQuizCompleted] = useState<boolean>(false);
    

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
        <div className="min-h-screen flex items-center justify-center bg-red-300 dark:bg-gray-900 bgsvg">
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
                        wrongCount={wrongCount}
                        totalQuestions={exercises.length}
                        exercises={exercises}
                    />
                    
                )}
                
               
            </div>
        </div>
    );
};

export default ExercisePage;
