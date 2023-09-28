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
        question: 'Quem foi napoleão?',
        options: ['imperador frances', 'presidente', 'govenador', 'uma pessoa normal'],
        correctAnswer: 'imperador frances',
        selectedOption: '',
    },
    {
        id: 2,
        question: 'Qual foi a primeira civilização conhecida da história?',
        options: ['a) Egípcia', 'b) Mesopotâmica', 'c) Chinesa', 'd) Grega'],
        correctAnswer: 'b) Mesopotâmica',
        selectedOption: '',
    },
    {
        id: 3,
        question: 'Quem foi o líder político e militar responsável pela unificação do Egito Antigo?',
        options: ['a) Tutancâmon', 'b) Cleópatra','c) Ramsés II', 'd) Narmer'],
        correctAnswer: 'd) Narmer',
        selectedOption: '',
    },
    {
        id: 4,
        question: 'Qual evento histórico marcou o início da Idade Moderna na Europa?',
        options: ['a) A queda do Império Romano', 'b) A Revolução Industrial', 'c) A descoberta da América por Cristóvão Colombo', 'd) A Revolução Francesa'],
        correctAnswer: 'c) A descoberta da América por Cristóvão Colombo',
        selectedOption: '',
    },
    {
        id: 5,
        question: 'Quem foi o líder principal da Revolução Russa de 1917?',
        options: ['a) Lenin', 'b) Stalin', 'c) Rasputin', 'd) Trotsky'],
        correctAnswer: 'a) Lenin',
        selectedOption: '',
    },
    {
        id: 6,
        question: 'Qual famoso explorador europeu é conhecido por sua viagem à América em 1492?',
        options: ['a) Marco Polo', 'b) Vasco da Gama', 'c) Cristóvão Colombo', 'd) Fernão de Magalhães'],
        correctAnswer: ' c) Cristóvão Colombo',
        selectedOption: '',
    },
    {
        id: 7,
        question: 'Quem foi o líder do movimento pelos direitos civis nos Estados Unidos, famoso por seu discurso "Eu tenho um sonho"?',
        options: ['a) Malcolm X', 'b) Nelson Mandela', 'c) Martin Luther King Jr.', 'd) Rosa Parks'],
        correctAnswer: 'c) Martin Luther King Jr.',
        selectedOption: '',
    },
    {
        id: 8,
        question: 'Qual foi o tratado que encerrou oficialmente a Primeira Guerra Mundial?',
        options: ['a) Tratado de Versalhes', 'b) Tratado de Tordesilhas', 'c) Tratado de Paris', 'd) Tratado de Viena'],
        correctAnswer: 'a) Tratado de Versalhes',
        selectedOption: '',
    },
    {
        id: 9,
        question: 'Qual foi a causa imediata da Revolução Francesa?',
        options: ['a) Fome e miséria generalizada', 'b) Abolição da monarquia absoluta', 'c) Influência das ideias iluministas', 'd) Invasão estrangeira'],
        correctAnswer: 'a) Fome e miséria generalizada',
        selectedOption: '',
    },
    {
        id: 10,
        question: 'Quem foi o líder do movimento de independência da Índia, que usou a resistência não violenta como estratégia?',
        options: ['a) Jawaharlal Nehru', 'b) Mahatma Gandhi', 'c) Subhas Chandra Bose', 'd) Indira Gandhi'],
        correctAnswer: 'b) Mahatma Gandhi',
        selectedOption: '',
    },
];



const ExerciseHistoryPage: React.FC = () => {
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
                            Quiz de História
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

export default ExerciseHistoryPage;
