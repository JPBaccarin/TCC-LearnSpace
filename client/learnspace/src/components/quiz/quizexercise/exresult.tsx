import React, { useState } from 'react';
import { FiCheck, FiX } from 'react-icons/fi';
import LastQuizCard from '../dashboard/lastquizcard';

interface Exercise {
  id: number;
  question: string;
  selectedOption: string | null;
  correctAnswer: string;
}

interface ExerciseResultProps {
  correctCount: number;
  wrongCount: number;
  totalQuestions: number;
  exercises: Exercise[];
}

const ExerciseResult: React.FC<ExerciseResultProps> = ({ correctCount, totalQuestions, exercises, wrongCount }) => {
  const [quizActive, setQuizActive] = useState(false);

  const restartQuiz = () => {
    // Aqui você pode redefinir o estado do quiz para o estado inicial
    // Por exemplo, limpar respostas selecionadas, redefinir contagens, etc.
    setQuizActive(true); // Defina como true se desejar reiniciar o quiz
  };

  const renderQuestionList = () => {
    return exercises.map((exercise) => {
      const isCorrect = exercise.selectedOption === exercise.correctAnswer;
      const icon = isCorrect ? (
        <FiCheck className="text-green-500 mr-2" />
      ) : (
        <FiX className="text-red-500 mr-2" />
      );
      const selectedOptionText = exercise.selectedOption ? (
        <p className={`text-sm ${isCorrect ? 'text-green-500' : 'text-red-500'} `}>
          <strong>Resposta escolhida:</strong> <span>{exercise.selectedOption}</span>
        </p>
      ) : null;

      return (
        <div key={exercise.id} className="mb-4 ">
          <div className="flex items-center ">
            {icon}
            <h3 className="text-md mb-2 font-semibold text-gray-900 dark:text-white">
              {exercise.question}
            </h3>
          </div>
          {selectedOptionText}
          <p className="text-sm text-gray-700 dark:text-gray-300">
            <strong>Resposta correta:</strong> {exercise.correctAnswer}
          </p>
          <hr className="my-2" />
        </div>
      );
    });
  };

  return (
    <>
      <h1 className="text-3xl font-extrabold text-center text-gray-900 dark:text-white mb-4">
        Quiz Finalizado!
      </h1>
      <p className="text-gray-900 dark:text-white">
        Você acertou {correctCount} de {totalQuestions} questões.
      </p>
      <h2 className="text-lg font-semibold mt-4 mb-2 dark:text-white">Lista de Questões:</h2>
      {renderQuestionList()}
      <div className=' p-3'>
        <LastQuizCard score={correctCount} topic="História" date="data_do_quiz" correctAnswers={correctCount} wrongAnswers={wrongCount} />
      </div>
      <div className='flex flex-row gap-3 justify-center '>
        <a
          className=" p-2  bg-red-500 hover:bg-red-600 focus:bg-red-600 text-white font-bold rounded-md transition duration-300  hover:scale-105 focus:scale-105"
          href='/quiz'
        >
          Voltar
        </a>

        {/* Botão para reiniciar o quiz */}
        <button
          className=" p-2  bg-green-500 hover:bg-green-600 focus:bg-green-600 text-white font-bold  rounded-md transition duration-300  hover:scale-105 focus:scale-105"
          onClick={restartQuiz}
        >
          Reiniciar o Quiz
        </button>
      </div>
    </>
  );
};

export default ExerciseResult;