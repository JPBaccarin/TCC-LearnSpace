import React from 'react';
import Link from 'next/link';
import RegistrationForm from '@/components/Formregister/Formregister';

const RegisterPage: React.FC = () => {
  const handleRegistrationSubmit = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    // Lógica de cadastro aqui
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-black">
      <div className="bg-gray-500 p-8 rounded-lg shadow-md w-80">
        <h1 className="text-2xl font-semibold mb-4">Cadastro</h1>
        <RegistrationForm onSubmit={handleRegistrationSubmit} />
        <p className="mt-4 text-center">
          Já possui uma conta?{' '}
          <Link href="/login">
            <a className="text-blue-500 hover:underline">Faça login</a>
          </Link>
        </p>
      </div>
    </div>
  );
};

export default RegisterPage;
