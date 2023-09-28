import React, { useEffect, useRef } from 'react';
import Chart from 'chart.js/auto';

interface LastQuizCardProps {
  score: number;
  topic: string;
  date: string;
  correctAnswers: number;
  wrongAnswers: number;
}

const LastQuizCard: React.FC<LastQuizCardProps> = ({ score, topic, date, correctAnswers, wrongAnswers }) => {
  const chartRef = useRef<HTMLCanvasElement | null>(null);
  const chartInstance = useRef<Chart | null>(null);

  useEffect(() => {
    if (chartRef.current) {
      // Se o gráfico anterior existir, destrua-o
      if (chartInstance.current) {
        chartInstance.current.destroy();
      }

      const ctx = chartRef.current;
      const chartId = `chart-${Date.now()}`; // Gere um ID único

      // Atribua o ID único ao elemento canvas
      ctx.id = chartId;

      // Crie um novo gráfico com o ID único
      chartInstance.current = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['Acertos', 'Erros'],
          datasets: [{
            label: 'Respostas',
            data: [correctAnswers, wrongAnswers],
            backgroundColor: ['#3b82f6', '#dc2626'],
            borderColor: '#FFFFFFF',
            borderWidth: 1
          }]
        },
        options: {
          scales: {
            y: {
              beginAtZero: true,
              max: Math.max(correctAnswers, wrongAnswers) + 1
            }
          }
        }
      });
    }
  }, [correctAnswers, wrongAnswers]);

  return (
    <div className="p-4 bg-white dark:bg-gray-700 rounded-md shadow-md">
      <h2 className="text-lg text-white font-semibold">{topic}</h2>
      <p className="text-sm text-gray-500"></p>
      <canvas ref={chartRef} width="400" height="200" color='text-white' className='text-white'></canvas>
    </div>
  );
};

export default LastQuizCard;
