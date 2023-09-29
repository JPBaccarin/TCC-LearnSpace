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
        question: 'Qual o nome do imperador francês que liderou expansões territoriais na Europa no século XIX?',
        options: ['Napoleão Bonaparte', 'Luís XIV', 'Carlos Magno', 'Júlio César'],
        correctAnswer: 'Napoleão Bonaparte',
        selectedOption: '',
    },
    {
        id: 2,
        question: 'Qual das opções a seguir representa a primeira civilização conhecida da história?',
        options: ['Egípcia', 'Mesopotâmica', 'Chinesa', 'Grega'],
        correctAnswer: 'Mesopotâmica',
        selectedOption: '',
    },
    {
        id: 3,
        question: 'Quem foi o líder político e militar responsável pela unificação do Egito Antigo?',
        options: ['Tutancâmon', 'Cleópatra', 'Ramsés II', 'Narmer'],
        correctAnswer: 'Narmer',
        selectedOption: '',
    },
    {
        id: 4,
        question: 'Qual evento histórico marcou o início da Idade Moderna na Europa?',
        options: ['A queda do Império Romano', 'A Revolução Industrial', 'A descoberta da América por Cristóvão Colombo', 'A Revolução Francesa'],
        correctAnswer: 'A descoberta da América por Cristóvão Colombo',
        selectedOption: '',
    },
    {
        id: 5,
        question: 'Quem foi o líder principal da Revolução Russa de 1917?',
        options: ['Lenin', 'Stalin', 'Rasputin', 'Trotsky'],
        correctAnswer: 'Lenin',
        selectedOption: '',
    },
    {
        id: 6,
        question: 'Qual famoso explorador europeu é conhecido por sua viagem à América em 1492?',
        options: ['Marco Polo', 'Vasco da Gama', 'Cristóvão Colombo', 'Fernão de Magalhães'],
        correctAnswer: 'Cristóvão Colombo',
        selectedOption: '',
    },
    {
        id: 7,
        question: 'Quem foi o líder do movimento pelos direitos civis nos Estados Unidos, famoso por seu discurso "Eu tenho um sonho"?',
        options: ['Malcolm X', 'Nelson Mandela', 'Martin Luther King Jr.', 'Rosa Parks'],
        correctAnswer: 'Martin Luther King Jr.',
        selectedOption: '',
    },
    {
        id: 8,
        question: 'Qual foi o tratado que encerrou oficialmente a Primeira Guerra Mundial?',
        options: ['Tratado de Versalhes', 'Tratado de Tordesilhas', 'Tratado de Paris', 'Tratado de Viena'],
        correctAnswer: 'Tratado de Versalhes',
        selectedOption: '',
    },
    {
        id: 9,
        question: 'Qual foi a causa imediata da Revolução Francesa?',
        options: ['Fome e miséria generalizada', 'Abolição da monarquia absoluta', 'Influência das ideias iluministas', 'Invasão estrangeira'],
        correctAnswer: 'Fome e miséria generalizada',
        selectedOption: '',
    },
    {
        id: 10,
        question: 'Quem foi o líder do movimento de independência da Índia, que usou a resistência não violenta como estratégia?',
        options: ['Jawaharlal Nehru', 'Mahatma Gandhi', 'Subhas Chandra Bose', 'Indira Gandhi'],
        correctAnswer: 'Mahatma Gandhi',
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
            <div className="max-w-[34rem] w-full mx-auto p-8 bg-white dark:bg-gray-800 rounded-md shadow-2xl">
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
