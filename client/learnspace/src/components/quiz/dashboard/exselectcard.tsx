'use client'

import { useState } from 'react';
import Link from 'next/link'; // Importe o Link
import { usePathname } from 'next/navigation';
import { useRouter } from 'next/navigation';

interface ExerciseSelectionCardProps {
  exerciseType: string;
  exerciseDifficulty: string;
  handleExerciseSelection: (field: string, value: string | number) => any;
}

const ExerciseSelectionCard: React.FC<ExerciseSelectionCardProps> = ({
  handleExerciseSelection,
}) => {
  const [exerciseType, setExerciseType] = useState('');
  const [exerciseDifficulty, setExerciseDifficulty] = useState('');

  const router = useRouter();

  const exerciseOptions = [
    { id: 1, type: 'Matemática', exerciseDifficulty: 'Médio' },
    { id: 2, type: 'História', exerciseDifficulty: 'Médio' },
  ];

  const handleStartQuiz = () => {
    // Create the query string for the exercise parameters
    const queryParams = `?exerciseType=${exerciseType}&exerciseDifficulty=${exerciseDifficulty}`;

    if (exerciseType && exerciseDifficulty) {
      const selectedExercise = exerciseOptions.find(
        (exercise) => exercise.type === exerciseType
      );

      if (selectedExercise) {
        const { id } = selectedExercise;

        if (id === 1) {
          // Redirecione o usuário para a primeira página com base no ID
          router.push(`/quiz/exercise${queryParams}`);
        } else if (id === 2) {
          // Redirecione o usuário para a segunda página com base no ID
          router.push(`/quiz/exercise${queryParams}`);
        } else {
          alert('Exercício não encontrado.');
        }
      } else {
        alert('Exercício não encontrado.');
      }
    } else {
      alert('Por favor, selecione todas as opções antes de iniciar o quiz.');
    }
  };

  return (
    <div className="bg-white p-6 rounded-md shadow-lg dark:bg-gray-700 w-full sm:w-fit">
      <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-4">
        Configuração do Quiz
      </h2>
      <div className="mb-4">
        <label className="block text-gray-900 dark:text-white mb-2">
          Tipo de Exercício:
        </label>
        <select
          value={exerciseType}
          onChange={(e) => setExerciseType(e.target.value)}
          className="w-full p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white"
        >
          <option value="">Selecione...</option>
          {exerciseOptions.map((exercise) => (
            <option key={exercise.id} value={exercise.type}>
              {exercise.type.charAt(0).toUpperCase() + exercise.type.slice(1)}
            </option>
          ))}
        </select>
      </div>
      <div className="mb-4">
        <label className="block text-gray-900 dark:text-white mb-2">Dificuldade:</label>
        <select
          value={exerciseDifficulty}
          onChange={(e) => setExerciseDifficulty(e.target.value)}
          className="w-full p-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-red-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white"
        >
          <option value="">Selecione...</option>
          <option value="medio">Médio</option>
        </select>
      </div>
      <button
        className="block w-full bg-red-500 hover:bg-red-600 focus:bg-red-600 text-white font-bold py-2 px-4 rounded-md transition duration-300 transform-gpu hover:scale-105 focus:scale-105"
        onClick={handleStartQuiz}
      >
        Iniciar Exercício
      </button>
    </div>
  );
};

export default ExerciseSelectionCard;